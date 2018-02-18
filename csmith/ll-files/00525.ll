; ModuleID = '00525.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_6 = internal global i16 -10, align 2
@.str.1 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_14 = internal global i32 2135235922, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_14\00", align 1
@g_21 = internal global i64 2950905320020917639, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"g_21\00", align 1
@g_31 = internal global i32 -9, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_31\00", align 1
@g_46 = internal global i16 22051, align 2
@.str.5 = private unnamed_addr constant [5 x i8] c"g_46\00", align 1
@g_61 = internal global i8 -9, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"g_61\00", align 1
@g_81 = internal global i64 -545133236112463503, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_101 = internal global i16 28186, align 2
@.str.8 = private unnamed_addr constant [6 x i8] c"g_101\00", align 1
@g_105 = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_105\00", align 1
@g_108 = internal global [2 x [9 x i32]] [[9 x i32] [i32 0, i32 0, i32 76328969, i32 -1, i32 76328969, i32 0, i32 0, i32 76328969, i32 -1], [9 x i32] [i32 8, i32 -615114321, i32 8, i32 76328969, i32 76328969, i32 8, i32 -615114321, i32 8, i32 76328969]], align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"g_108[i][j]\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_115 = internal global [6 x [4 x [10 x i16]]] [[4 x [10 x i16]] [[10 x i16] [i16 -22347, i16 -2, i16 -1, i16 -22347, i16 13736, i16 -17189, i16 2, i16 5347, i16 -9, i16 -4475], [10 x i16] [i16 -8, i16 -1, i16 -16076, i16 1994, i16 0, i16 -1, i16 -2, i16 0, i16 0, i16 3306], [10 x i16] [i16 0, i16 0, i16 5691, i16 -16521, i16 21669, i16 0, i16 -6, i16 -1, i16 17073, i16 -16521], [10 x i16] [i16 -5, i16 -1, i16 0, i16 0, i16 -9399, i16 -29396, i16 25051, i16 1994, i16 -31194, i16 -8]], [4 x [10 x i16]] [[10 x i16] [i16 0, i16 -26461, i16 -1, i16 13958, i16 -1, i16 -5, i16 0, i16 20715, i16 -19348, i16 -2], [10 x i16] [i16 -6, i16 -9399, i16 -19348, i16 -16076, i16 -1, i16 1, i16 1, i16 -1, i16 -16076, i16 -19348], [10 x i16] [i16 0, i16 0, i16 15229, i16 -21030, i16 0, i16 1, i16 3306, i16 2, i16 -7, i16 0], [10 x i16] [i16 -2731, i16 -1, i16 -16076, i16 -9399, i16 -5, i16 -1, i16 3306, i16 -26461, i16 0, i16 -31413]], [4 x [10 x i16]] [[10 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 4576, i16 0, i16 7], [10 x i16] [i16 1, i16 -9399, i16 -2, i16 2, i16 -4475, i16 12991, i16 0, i16 -22347, i16 -10, i16 -2731], [10 x i16] [i16 0, i16 -26461, i16 -13987, i16 -2, i16 -1, i16 7, i16 25051, i16 -6, i16 -12607, i16 1], [10 x i16] [i16 -1, i16 -1, i16 17073, i16 -6, i16 2, i16 0, i16 -6, i16 21669, i16 -31416, i16 -1]], [4 x [10 x i16]] [[10 x i16] [i16 1, i16 0, i16 -6, i16 25051, i16 0, i16 -10, i16 -2, i16 -1, i16 27149, i16 0], [10 x i16] [i16 -2731, i16 -1, i16 -16521, i16 0, i16 7, i16 -16076, i16 2, i16 -1, i16 -1, i16 1], [10 x i16] [i16 7, i16 -2, i16 0, i16 -9, i16 -1, i16 -9, i16 -7, i16 1, i16 1, i16 24632], [10 x i16] [i16 -13987, i16 -1, i16 -31413, i16 0, i16 5691, i16 2, i16 -19348, i16 469, i16 0, i16 17073]], [4 x [10 x i16]] [[10 x i16] [i16 0, i16 29962, i16 -17189, i16 0, i16 -29396, i16 -23011, i16 -2, i16 27149, i16 1, i16 -5], [10 x i16] [i16 3, i16 469, i16 -2, i16 -9, i16 0, i16 -2, i16 -29396, i16 0, i16 0, i16 -6], [10 x i16] [i16 1, i16 0, i16 -22347, i16 20715, i16 0, i16 -1, i16 -1, i16 -19348, i16 -31413, i16 0], [10 x i16] [i16 -26461, i16 -2, i16 -20566, i16 0, i16 -23011, i16 0, i16 -5, i16 3, i16 -9805, i16 0]], [4 x [10 x i16]] [[10 x i16] [i16 -31194, i16 -12607, i16 -2, i16 -6, i16 -1, i16 -9068, i16 -31194, i16 -26461, i16 13833, i16 0], [10 x i16] [i16 0, i16 -2, i16 -9399, i16 1, i16 -31416, i16 1, i16 -16521, i16 469, i16 -8, i16 -26461], [10 x i16] [i16 469, i16 -7, i16 -6, i16 -1, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0], [10 x i16] [i16 -6, i16 -12607, i16 -7, i16 -7, i16 -12607, i16 -6, i16 1, i16 7, i16 -10, i16 -1]]], align 16
@.str.12 = private unnamed_addr constant [15 x i8] c"g_115[i][j][k]\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_150 = internal global i32 -1252426600, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_150\00", align 1
@g_153 = internal global [8 x i32] [i32 -1890331615, i32 -1890331615, i32 -1890331615, i32 -1890331615, i32 -1890331615, i32 -1890331615, i32 -1890331615, i32 -1890331615], align 16
@.str.15 = private unnamed_addr constant [9 x i8] c"g_153[i]\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_168 = internal global i64 -10, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_168\00", align 1
@g_171 = internal global i16 -4, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_171\00", align 1
@g_179 = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_179\00", align 1
@g_233 = internal global i8 6, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_233\00", align 1
@g_273 = internal global i32 -997611133, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_273\00", align 1
@g_352 = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_352\00", align 1
@g_355 = internal global i8 -11, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_355\00", align 1
@g_529 = internal global i32 -1, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_529\00", align 1
@g_605 = internal global i8 124, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_605\00", align 1
@g_626 = internal global i16 1137, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_626\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_752\00", align 1
@g_779 = internal global i32 -1697734094, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_779\00", align 1
@g_790 = internal global [9 x [9 x i32]] [[9 x i32] [i32 -1491456389, i32 -1, i32 -1737312299, i32 1055876980, i32 1, i32 -726202056, i32 -3, i32 1, i32 -1], [9 x i32] [i32 1055876980, i32 9, i32 4, i32 -1567303980, i32 0, i32 3, i32 0, i32 1354921830, i32 -1567303980], [9 x i32] [i32 -1491456389, i32 1, i32 -3, i32 1, i32 -1921152920, i32 -3, i32 313837609, i32 -3, i32 -1737312299], [9 x i32] [i32 -1563125023, i32 1366988642, i32 -1, i32 -1921152920, i32 -1921152920, i32 -1, i32 1366988642, i32 -1563125023, i32 -3], [9 x i32] [i32 -135192649, i32 1055876980, i32 3, i32 -1, i32 0, i32 -135192649, i32 -1921152920, i32 -1, i32 580849079], [9 x i32] [i32 -726202056, i32 -3, i32 1, i32 -1, i32 1, i32 -1744946734, i32 -1236392264, i32 -1567303980, i32 -3], [9 x i32] [i32 -1236392264, i32 0, i32 4, i32 1354921830, i32 -542314228, i32 1055876980, i32 1, i32 -1737312299, i32 -1737312299], [9 x i32] [i32 -1491456389, i32 -726202056, i32 -1236392264, i32 1354921830, i32 -1236392264, i32 -726202056, i32 -1491456389, i32 -3, i32 -1567303980], [9 x i32] [i32 580849079, i32 9, i32 1141881802, i32 -1, i32 1055876980, i32 -1, i32 0, i32 580849079, i32 -1]], align 16
@.str.29 = private unnamed_addr constant [12 x i8] c"g_790[i][j]\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_795\00", align 1
@g_840 = internal global i16 2, align 2
@.str.31 = private unnamed_addr constant [6 x i8] c"g_840\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_883\00", align 1
@g_918 = internal global [1 x [10 x i64]] [[10 x i64] [i64 -1, i64 5026656769642104429, i64 5026656769642104429, i64 -1, i64 5026656769642104429, i64 5026656769642104429, i64 -1, i64 5026656769642104429, i64 5026656769642104429, i64 -1]], align 16
@.str.33 = private unnamed_addr constant [12 x i8] c"g_918[i][j]\00", align 1
@g_983 = internal constant [4 x i32] [i32 -671503053, i32 -671503053, i32 -671503053, i32 -671503053], align 16
@.str.34 = private unnamed_addr constant [9 x i8] c"g_983[i]\00", align 1
@g_1068 = internal global [8 x [2 x i32]] [[2 x i32] [i32 0, i32 -852437018], [2 x i32] [i32 -852437018, i32 0], [2 x i32] [i32 1, i32 1740267442], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 -852437018, i32 -852437018], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1740267442, i32 1], [2 x i32] [i32 0, i32 -852437018]], align 16
@.str.35 = private unnamed_addr constant [13 x i8] c"g_1068[i][j]\00", align 1
@g_1143 = internal global [7 x i32] [i32 -1110913320, i32 -1110913320, i32 -1110913320, i32 -1110913320, i32 -1110913320, i32 -1110913320, i32 -1110913320], align 16
@.str.36 = private unnamed_addr constant [10 x i8] c"g_1143[i]\00", align 1
@g_1183 = internal global i16 -28250, align 2
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1183\00", align 1
@g_1209 = internal global [8 x [4 x [1 x i64]]] [[4 x [1 x i64]] [[1 x i64] [i64 -1], [1 x i64] [i64 -8290595261512379510], [1 x i64] [i64 4376619184244751950], [1 x i64] [i64 4376619184244751950]], [4 x [1 x i64]] [[1 x i64] [i64 -8290595261512379510], [1 x i64] [i64 -1], [1 x i64] [i64 -6748963250602703273], [1 x i64] [i64 -1]], [4 x [1 x i64]] [[1 x i64] [i64 4376619184244751950], [1 x i64] [i64 -6748963250602703273], [1 x i64] [i64 -1], [1 x i64] [i64 -6748963250602703273]], [4 x [1 x i64]] [[1 x i64] [i64 4376619184244751950], [1 x i64] [i64 -1], [1 x i64] [i64 -6748963250602703273], [1 x i64] [i64 -1]], [4 x [1 x i64]] [[1 x i64] [i64 -8290595261512379510], [1 x i64] [i64 4376619184244751950], [1 x i64] [i64 4376619184244751950], [1 x i64] [i64 -8290595261512379510]], [4 x [1 x i64]] [[1 x i64] [i64 -1], [1 x i64] [i64 -6748963250602703273], [1 x i64] [i64 -1], [1 x i64] [i64 4376619184244751950]], [4 x [1 x i64]] [[1 x i64] [i64 -6748963250602703273], [1 x i64] [i64 -1], [1 x i64] [i64 -6748963250602703273], [1 x i64] [i64 4376619184244751950]], [4 x [1 x i64]] [[1 x i64] [i64 -1], [1 x i64] [i64 -6748963250602703273], [1 x i64] [i64 -1], [1 x i64] [i64 -8290595261512379510]]], align 16
@.str.38 = private unnamed_addr constant [16 x i8] c"g_1209[i][j][k]\00", align 1
@g_1319 = internal global i32 -1153659545, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1319\00", align 1
@g_1365 = internal global i16 -16194, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1365\00", align 1
@g_1413 = internal global i32 391870764, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1413\00", align 1
@g_1455 = internal global i16 -8902, align 2
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1455\00", align 1
@g_1461 = internal global i64 -8, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1461\00", align 1
@g_1499 = internal global i64 9, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1499\00", align 1
@g_1549 = internal global i32 -1533449826, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1549\00", align 1
@g_1766 = internal global i32 2, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1766\00", align 1
@g_2127 = internal constant [5 x [10 x [5 x i32]]] [[10 x [5 x i32]] [[5 x i32] [i32 7, i32 -1, i32 -2, i32 532681866, i32 -1], [5 x i32] [i32 -572258839, i32 -1508724011, i32 -1508724011, i32 -572258839, i32 -1562892754], [5 x i32] [i32 0, i32 1287130494, i32 0, i32 -1, i32 -1], [5 x i32] [i32 1727903354, i32 -572258839, i32 1727903354, i32 -1562892754, i32 -572258839], [5 x i32] [i32 -1, i32 -2, i32 532681866, i32 -1, i32 532681866], [5 x i32] [i32 -1, i32 -1, i32 953137476, i32 -572258839, i32 1405834120], [5 x i32] [i32 7, i32 0, i32 532681866, i32 532681866, i32 0], [5 x i32] [i32 1405834120, i32 -1508724011, i32 1727903354, i32 1405834120, i32 -1562892754], [5 x i32] [i32 1287130494, i32 0, i32 0, i32 0, i32 1287130494], [5 x i32] [i32 1727903354, i32 -1, i32 -1508724011, i32 -1562892754, i32 -1]], [10 x [5 x i32]] [[5 x i32] [i32 1287130494, i32 -2, i32 -2, i32 1287130494, i32 532681866], [5 x i32] [i32 1405834120, i32 -572258839, i32 953137476, i32 -1, i32 -1], [5 x i32] [i32 7, i32 1287130494, i32 7, i32 532681866, i32 1287130494], [5 x i32] [i32 -1, i32 -1508724011, i32 -1562892754, i32 -1, i32 -1562892754], [5 x i32] [i32 -1, i32 -1, i32 0, i32 1287130494, i32 0], [5 x i32] [i32 1727903354, i32 1405834120, i32 -1562892754, i32 -1562892754, i32 1405834120], [5 x i32] [i32 0, i32 -2, i32 7, i32 0, i32 532681866], [5 x i32] [i32 -572258839, i32 1405834120, i32 953137476, i32 1405834120, i32 -572258839], [5 x i32] [i32 7, i32 -1, i32 -2, i32 532681866, i32 -1], [5 x i32] [i32 -572258839, i32 -1508724011, i32 -1508724011, i32 -572258839, i32 -1562892754]], [10 x [5 x i32]] [[5 x i32] [i32 0, i32 1287130494, i32 0, i32 -1, i32 -1], [5 x i32] [i32 1727903354, i32 -572258839, i32 1727903354, i32 -1562892754, i32 -572258839], [5 x i32] [i32 -1, i32 -2, i32 532681866, i32 -1, i32 532681866], [5 x i32] [i32 -1, i32 -1, i32 953137476, i32 -572258839, i32 1405834120], [5 x i32] [i32 7, i32 0, i32 532681866, i32 532681866, i32 0], [5 x i32] [i32 1405834120, i32 -1508724011, i32 1727903354, i32 1405834120, i32 -1562892754], [5 x i32] [i32 1287130494, i32 532681866, i32 -1, i32 532681866, i32 -2], [5 x i32] [i32 187717643, i32 1727903354, i32 953137476, i32 -1369155803, i32 1727903354], [5 x i32] [i32 -2, i32 0, i32 0, i32 -2, i32 1], [5 x i32] [i32 -1562892754, i32 -1508724011, i32 -1, i32 1727903354, i32 1727903354]], [10 x [5 x i32]] [[5 x i32] [i32 -1, i32 -2, i32 -1, i32 1, i32 -2], [5 x i32] [i32 1727903354, i32 953137476, i32 -1369155803, i32 1727903354, i32 -1369155803], [5 x i32] [i32 7, i32 7, i32 -1, i32 -2, i32 532681866], [5 x i32] [i32 187717643, i32 -1562892754, i32 -1369155803, i32 -1369155803, i32 -1562892754], [5 x i32] [i32 532681866, i32 0, i32 -1, i32 532681866, i32 1], [5 x i32] [i32 -1508724011, i32 -1562892754, i32 -1, i32 -1562892754, i32 -1508724011], [5 x i32] [i32 -1, i32 7, i32 0, i32 1, i32 7], [5 x i32] [i32 -1508724011, i32 953137476, i32 953137476, i32 -1508724011, i32 -1369155803], [5 x i32] [i32 532681866, i32 -2, i32 -1, i32 7, i32 7], [5 x i32] [i32 187717643, i32 -1508724011, i32 187717643, i32 -1369155803, i32 -1508724011]], [10 x [5 x i32]] [[5 x i32] [i32 7, i32 0, i32 1, i32 7, i32 1], [5 x i32] [i32 1727903354, i32 1727903354, i32 -1, i32 -1508724011, i32 -1562892754], [5 x i32] [i32 -1, i32 532681866, i32 1, i32 1, i32 532681866], [5 x i32] [i32 -1562892754, i32 953137476, i32 187717643, i32 -1562892754, i32 -1369155803], [5 x i32] [i32 -2, i32 532681866, i32 -1, i32 532681866, i32 -2], [5 x i32] [i32 187717643, i32 1727903354, i32 953137476, i32 -1369155803, i32 1727903354], [5 x i32] [i32 -2, i32 0, i32 0, i32 -2, i32 1], [5 x i32] [i32 -1562892754, i32 -1508724011, i32 -1, i32 1727903354, i32 1727903354], [5 x i32] [i32 -1, i32 -2, i32 -1, i32 1, i32 -2], [5 x i32] [i32 1727903354, i32 953137476, i32 -1369155803, i32 1727903354, i32 -1369155803]]], align 16
@.str.47 = private unnamed_addr constant [16 x i8] c"g_2127[i][j][k]\00", align 1
@g_2169 = internal global i16 0, align 2
@.str.48 = private unnamed_addr constant [7 x i8] c"g_2169\00", align 1
@g_2237 = internal global [2 x [9 x i8]] [[9 x i8] c"$\CC$\CC$\CC$\CC$", [9 x i8] c"\5C\00\00\5C\5C\00\00\5C\5C"], align 16
@.str.49 = private unnamed_addr constant [13 x i8] c"g_2237[i][j]\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"g_2415\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2599\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_677 = internal global i32* @g_150, align 8
@g_112 = internal global i32* @g_105, align 8
@g_451 = internal global [9 x [3 x i8**]] [[3 x i8**] [i8** @g_452, i8** null, i8** null], [3 x i8**] [i8** @g_452, i8** null, i8** null], [3 x i8**] [i8** @g_452, i8** null, i8** null], [3 x i8**] [i8** @g_452, i8** null, i8** null], [3 x i8**] [i8** @g_452, i8** null, i8** null], [3 x i8**] [i8** @g_452, i8** null, i8** null], [3 x i8**] [i8** @g_452, i8** null, i8** null], [3 x i8**] [i8** @g_452, i8** null, i8** null], [3 x i8**] [i8** @g_452, i8** null, i8** null]], align 16
@g_2692 = internal global [3 x [7 x i8***]] [[7 x i8***] [i8*** null, i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8**]* @g_2693 to i8*), i64 56) to i8***), i8*** null, i8*** getelementptr inbounds ([8 x i8**], [8 x i8**]* @g_2693, i32 0, i32 0), i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8**]* @g_2693 to i8*), i64 56) to i8***), i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8**]* @g_2693 to i8*), i64 56) to i8***), i8*** getelementptr inbounds ([8 x i8**], [8 x i8**]* @g_2693, i32 0, i32 0)], [7 x i8***] [i8*** null, i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8**]* @g_2693 to i8*), i64 56) to i8***), i8*** null, i8*** getelementptr inbounds ([8 x i8**], [8 x i8**]* @g_2693, i32 0, i32 0), i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8**]* @g_2693 to i8*), i64 56) to i8***), i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8**]* @g_2693 to i8*), i64 56) to i8***), i8*** getelementptr inbounds ([8 x i8**], [8 x i8**]* @g_2693, i32 0, i32 0)], [7 x i8***] [i8*** null, i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8**]* @g_2693 to i8*), i64 56) to i8***), i8*** null, i8*** getelementptr inbounds ([8 x i8**], [8 x i8**]* @g_2693, i32 0, i32 0), i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8**]* @g_2693 to i8*), i64 56) to i8***), i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8**]* @g_2693 to i8*), i64 56) to i8***), i8*** getelementptr inbounds ([8 x i8**], [8 x i8**]* @g_2693, i32 0, i32 0)]], align 16
@g_2168 = internal global i16* @g_2169, align 8
@g_2695 = internal global i8* @g_233, align 8
@g_778 = internal constant i32* @g_779, align 8
@g_548 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [7 x i32*]]* @g_13 to i8*), i64 272) to i32**), align 8
@g_986 = internal global i32** @g_677, align 8
@g_452 = internal global i8* @g_233, align 8
@g_13 = internal global [7 x [7 x i32*]] [[7 x i32*] [i32* @g_14, i32* @g_14, i32* null, i32* @g_14, i32* @g_14, i32* @g_14, i32* @g_14], [7 x i32*] [i32* @g_14, i32* @g_14, i32* @g_14, i32* @g_14, i32* null, i32* @g_14, i32* @g_14], [7 x i32*] [i32* null, i32* null, i32* @g_14, i32* @g_14, i32* @g_14, i32* @g_14, i32* @g_14], [7 x i32*] [i32* null, i32* @g_14, i32* @g_14, i32* @g_14, i32* @g_14, i32* @g_14, i32* @g_14], [7 x i32*] [i32* @g_14, i32* null, i32* @g_14, i32* @g_14, i32* @g_14, i32* null, i32* @g_14], [7 x i32*] [i32* @g_14, i32* @g_14, i32* @g_14, i32* @g_14, i32* null, i32* @g_14, i32* @g_14], [7 x i32*] [i32* @g_14, i32* null, i32* @g_14, i32* @g_14, i32* null, i32* @g_14, i32* @g_14]], align 16
@g_1091 = internal global i32* null, align 8
@func_3.l_2384 = private unnamed_addr constant [9 x i32*] [i32* @g_779, i32* @g_779, i32* @g_779, i32* @g_779, i32* @g_779, i32* @g_779, i32* @g_779, i32* @g_779, i32* @g_779], align 16
@func_3.l_2451 = private unnamed_addr constant [8 x [3 x i8]] [[3 x i8] c"\FD\FD\FD", [3 x i8] c"\87\00\87", [3 x i8] c"\FD\FD\FD", [3 x i8] c"\87\00\87", [3 x i8] c"\FD\FD\FD", [3 x i8] c"\87\00\87", [3 x i8] c"\FD\FD\FD", [3 x i8] c"\87\00\87"], align 16
@g_122 = internal global [4 x i16*] [i16* @g_101, i16* @g_101, i16* @g_101, i16* @g_101], align 16
@func_3.l_2537 = private unnamed_addr constant [2 x [9 x i8]] [[9 x i8] c"\FF\01\FF\FF\01\FF\FF\01\FF", [9 x i8] c"\FF\01\FF\FF\01\FF\FF\01\FF"], align 16
@g_2693 = internal constant [8 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_2694, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_2694, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_2694, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_2694, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_2694, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_2694, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_2694, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_2694, i32 0, i32 0)], align 16
@g_2694 = internal global [1 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([2 x [9 x i8]], [2 x [9 x i8]]* @g_2237, i32 0, i32 0, i32 0), i64 17)], align 8
@.str.52 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i16, i16* @g_6, align 2, !tbaa !10
  %92 = sext i16 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_14, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i64, i64* @g_21, align 8, !tbaa !7
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %98)
  %99 = load i32, i32* @g_31, align 4, !tbaa !1
  %100 = zext i32 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %101)
  %102 = load i16, i16* @g_46, align 2, !tbaa !10
  %103 = zext i16 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %104)
  %105 = load i8, i8* @g_61, align 1, !tbaa !9
  %106 = zext i8 %105 to i64
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %107)
  %108 = load i64, i64* @g_81, align 8, !tbaa !7
  %109 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %109)
  %110 = load i16, i16* @g_101, align 2, !tbaa !10
  %111 = sext i16 %110 to i64
  %112 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %112)
  %113 = load i32, i32* @g_105, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %115)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %116

; <label>:116                                     ; preds = %144, %89
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %119, label %147

; <label>:119                                     ; preds = %116
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %120

; <label>:120                                     ; preds = %140, %119
  %121 = load i32, i32* %j, align 4, !tbaa !1
  %122 = icmp slt i32 %121, 9
  br i1 %122, label %123, label %143

; <label>:123                                     ; preds = %120
  %124 = load i32, i32* %j, align 4, !tbaa !1
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [2 x [9 x i32]], [2 x [9 x i32]]* @g_108, i32 0, i64 %127
  %129 = getelementptr inbounds [9 x i32], [9 x i32]* %128, i32 0, i64 %125
  %130 = load i32, i32* %129, align 4, !tbaa !1
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %132)
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

; <label>:135                                     ; preds = %123
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = load i32, i32* %j, align 4, !tbaa !1
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %136, i32 %137)
  br label %139

; <label>:139                                     ; preds = %135, %123
  br label %140

; <label>:140                                     ; preds = %139
  %141 = load i32, i32* %j, align 4, !tbaa !1
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %j, align 4, !tbaa !1
  br label %120

; <label>:143                                     ; preds = %120
  br label %144

; <label>:144                                     ; preds = %143
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %i, align 4, !tbaa !1
  br label %116

; <label>:147                                     ; preds = %116
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %148

; <label>:148                                     ; preds = %188, %147
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = icmp slt i32 %149, 6
  br i1 %150, label %151, label %191

; <label>:151                                     ; preds = %148
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %152

; <label>:152                                     ; preds = %184, %151
  %153 = load i32, i32* %j, align 4, !tbaa !1
  %154 = icmp slt i32 %153, 4
  br i1 %154, label %155, label %187

; <label>:155                                     ; preds = %152
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %156

; <label>:156                                     ; preds = %180, %155
  %157 = load i32, i32* %k, align 4, !tbaa !1
  %158 = icmp slt i32 %157, 10
  br i1 %158, label %159, label %183

; <label>:159                                     ; preds = %156
  %160 = load i32, i32* %k, align 4, !tbaa !1
  %161 = sext i32 %160 to i64
  %162 = load i32, i32* %j, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [6 x [4 x [10 x i16]]], [6 x [4 x [10 x i16]]]* @g_115, i32 0, i64 %165
  %167 = getelementptr inbounds [4 x [10 x i16]], [4 x [10 x i16]]* %166, i32 0, i64 %163
  %168 = getelementptr inbounds [10 x i16], [10 x i16]* %167, i32 0, i64 %161
  %169 = load i16, i16* %168, align 2, !tbaa !10
  %170 = zext i16 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 %171)
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

; <label>:174                                     ; preds = %159
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = load i32, i32* %j, align 4, !tbaa !1
  %177 = load i32, i32* %k, align 4, !tbaa !1
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 %175, i32 %176, i32 %177)
  br label %179

; <label>:179                                     ; preds = %174, %159
  br label %180

; <label>:180                                     ; preds = %179
  %181 = load i32, i32* %k, align 4, !tbaa !1
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %k, align 4, !tbaa !1
  br label %156

; <label>:183                                     ; preds = %156
  br label %184

; <label>:184                                     ; preds = %183
  %185 = load i32, i32* %j, align 4, !tbaa !1
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %j, align 4, !tbaa !1
  br label %152

; <label>:187                                     ; preds = %152
  br label %188

; <label>:188                                     ; preds = %187
  %189 = load i32, i32* %i, align 4, !tbaa !1
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %i, align 4, !tbaa !1
  br label %148

; <label>:191                                     ; preds = %148
  %192 = load i32, i32* @g_150, align 4, !tbaa !1
  %193 = sext i32 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %194)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %195

; <label>:195                                     ; preds = %211, %191
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = icmp slt i32 %196, 8
  br i1 %197, label %198, label %214

; <label>:198                                     ; preds = %195
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* @g_153, i32 0, i64 %200
  %202 = load i32, i32* %201, align 4, !tbaa !1
  %203 = zext i32 %202 to i64
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %204)
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

; <label>:207                                     ; preds = %198
  %208 = load i32, i32* %i, align 4, !tbaa !1
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %208)
  br label %210

; <label>:210                                     ; preds = %207, %198
  br label %211

; <label>:211                                     ; preds = %210
  %212 = load i32, i32* %i, align 4, !tbaa !1
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %i, align 4, !tbaa !1
  br label %195

; <label>:214                                     ; preds = %195
  %215 = load i64, i64* @g_168, align 8, !tbaa !7
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %216)
  %217 = load i16, i16* @g_171, align 2, !tbaa !10
  %218 = zext i16 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %219)
  %220 = load i32, i32* @g_179, align 4, !tbaa !1
  %221 = zext i32 %220 to i64
  %222 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %221, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %222)
  %223 = load i8, i8* @g_233, align 1, !tbaa !9
  %224 = zext i8 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %225)
  %226 = load i32, i32* @g_273, align 4, !tbaa !1
  %227 = sext i32 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %228)
  %229 = load i32, i32* @g_352, align 4, !tbaa !1
  %230 = zext i32 %229 to i64
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %231)
  %232 = load i8, i8* @g_355, align 1, !tbaa !9
  %233 = sext i8 %232 to i64
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %234)
  %235 = load i32, i32* @g_529, align 4, !tbaa !1
  %236 = sext i32 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %237)
  %238 = load i8, i8* @g_605, align 1, !tbaa !9
  %239 = sext i8 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %240)
  %241 = load volatile i16, i16* @g_626, align 2, !tbaa !10
  %242 = sext i16 %241 to i64
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %243)
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %244)
  %245 = load i32, i32* @g_779, align 4, !tbaa !1
  %246 = sext i32 %245 to i64
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %247)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %248

; <label>:248                                     ; preds = %276, %214
  %249 = load i32, i32* %i, align 4, !tbaa !1
  %250 = icmp slt i32 %249, 9
  br i1 %250, label %251, label %279

; <label>:251                                     ; preds = %248
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %252

; <label>:252                                     ; preds = %272, %251
  %253 = load i32, i32* %j, align 4, !tbaa !1
  %254 = icmp slt i32 %253, 9
  br i1 %254, label %255, label %275

; <label>:255                                     ; preds = %252
  %256 = load i32, i32* %j, align 4, !tbaa !1
  %257 = sext i32 %256 to i64
  %258 = load i32, i32* %i, align 4, !tbaa !1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* @g_790, i32 0, i64 %259
  %261 = getelementptr inbounds [9 x i32], [9 x i32]* %260, i32 0, i64 %257
  %262 = load i32, i32* %261, align 4, !tbaa !1
  %263 = zext i32 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 %264)
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

; <label>:267                                     ; preds = %255
  %268 = load i32, i32* %i, align 4, !tbaa !1
  %269 = load i32, i32* %j, align 4, !tbaa !1
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %268, i32 %269)
  br label %271

; <label>:271                                     ; preds = %267, %255
  br label %272

; <label>:272                                     ; preds = %271
  %273 = load i32, i32* %j, align 4, !tbaa !1
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %j, align 4, !tbaa !1
  br label %252

; <label>:275                                     ; preds = %252
  br label %276

; <label>:276                                     ; preds = %275
  %277 = load i32, i32* %i, align 4, !tbaa !1
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %i, align 4, !tbaa !1
  br label %248

; <label>:279                                     ; preds = %248
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %280)
  %281 = load i16, i16* @g_840, align 2, !tbaa !10
  %282 = zext i16 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %283)
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 5033666251035538459, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %284)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %285

; <label>:285                                     ; preds = %312, %279
  %286 = load i32, i32* %i, align 4, !tbaa !1
  %287 = icmp slt i32 %286, 1
  br i1 %287, label %288, label %315

; <label>:288                                     ; preds = %285
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %289

; <label>:289                                     ; preds = %308, %288
  %290 = load i32, i32* %j, align 4, !tbaa !1
  %291 = icmp slt i32 %290, 10
  br i1 %291, label %292, label %311

; <label>:292                                     ; preds = %289
  %293 = load i32, i32* %j, align 4, !tbaa !1
  %294 = sext i32 %293 to i64
  %295 = load i32, i32* %i, align 4, !tbaa !1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [1 x [10 x i64]], [1 x [10 x i64]]* @g_918, i32 0, i64 %296
  %298 = getelementptr inbounds [10 x i64], [10 x i64]* %297, i32 0, i64 %294
  %299 = load volatile i64, i64* %298, align 8, !tbaa !7
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %299, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %300)
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

; <label>:303                                     ; preds = %292
  %304 = load i32, i32* %i, align 4, !tbaa !1
  %305 = load i32, i32* %j, align 4, !tbaa !1
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %304, i32 %305)
  br label %307

; <label>:307                                     ; preds = %303, %292
  br label %308

; <label>:308                                     ; preds = %307
  %309 = load i32, i32* %j, align 4, !tbaa !1
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %j, align 4, !tbaa !1
  br label %289

; <label>:311                                     ; preds = %289
  br label %312

; <label>:312                                     ; preds = %311
  %313 = load i32, i32* %i, align 4, !tbaa !1
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %i, align 4, !tbaa !1
  br label %285

; <label>:315                                     ; preds = %285
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %316

; <label>:316                                     ; preds = %332, %315
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = icmp slt i32 %317, 4
  br i1 %318, label %319, label %335

; <label>:319                                     ; preds = %316
  %320 = load i32, i32* %i, align 4, !tbaa !1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x i32], [4 x i32]* @g_983, i32 0, i64 %321
  %323 = load i32, i32* %322, align 4, !tbaa !1
  %324 = zext i32 %323 to i64
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %325)
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

; <label>:328                                     ; preds = %319
  %329 = load i32, i32* %i, align 4, !tbaa !1
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %329)
  br label %331

; <label>:331                                     ; preds = %328, %319
  br label %332

; <label>:332                                     ; preds = %331
  %333 = load i32, i32* %i, align 4, !tbaa !1
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %i, align 4, !tbaa !1
  br label %316

; <label>:335                                     ; preds = %316
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %336

; <label>:336                                     ; preds = %364, %335
  %337 = load i32, i32* %i, align 4, !tbaa !1
  %338 = icmp slt i32 %337, 8
  br i1 %338, label %339, label %367

; <label>:339                                     ; preds = %336
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %340

; <label>:340                                     ; preds = %360, %339
  %341 = load i32, i32* %j, align 4, !tbaa !1
  %342 = icmp slt i32 %341, 2
  br i1 %342, label %343, label %363

; <label>:343                                     ; preds = %340
  %344 = load i32, i32* %j, align 4, !tbaa !1
  %345 = sext i32 %344 to i64
  %346 = load i32, i32* %i, align 4, !tbaa !1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @g_1068, i32 0, i64 %347
  %349 = getelementptr inbounds [2 x i32], [2 x i32]* %348, i32 0, i64 %345
  %350 = load i32, i32* %349, align 4, !tbaa !1
  %351 = zext i32 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 %352)
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %359

; <label>:355                                     ; preds = %343
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = load i32, i32* %j, align 4, !tbaa !1
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %356, i32 %357)
  br label %359

; <label>:359                                     ; preds = %355, %343
  br label %360

; <label>:360                                     ; preds = %359
  %361 = load i32, i32* %j, align 4, !tbaa !1
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %j, align 4, !tbaa !1
  br label %340

; <label>:363                                     ; preds = %340
  br label %364

; <label>:364                                     ; preds = %363
  %365 = load i32, i32* %i, align 4, !tbaa !1
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %i, align 4, !tbaa !1
  br label %336

; <label>:367                                     ; preds = %336
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %368

; <label>:368                                     ; preds = %384, %367
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = icmp slt i32 %369, 7
  br i1 %370, label %371, label %387

; <label>:371                                     ; preds = %368
  %372 = load i32, i32* %i, align 4, !tbaa !1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [7 x i32], [7 x i32]* @g_1143, i32 0, i64 %373
  %375 = load volatile i32, i32* %374, align 4, !tbaa !1
  %376 = zext i32 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 %377)
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

; <label>:380                                     ; preds = %371
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %381)
  br label %383

; <label>:383                                     ; preds = %380, %371
  br label %384

; <label>:384                                     ; preds = %383
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %i, align 4, !tbaa !1
  br label %368

; <label>:387                                     ; preds = %368
  %388 = load i16, i16* @g_1183, align 2, !tbaa !10
  %389 = sext i16 %388 to i64
  %390 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %389, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %390)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %391

; <label>:391                                     ; preds = %430, %387
  %392 = load i32, i32* %i, align 4, !tbaa !1
  %393 = icmp slt i32 %392, 8
  br i1 %393, label %394, label %433

; <label>:394                                     ; preds = %391
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %395

; <label>:395                                     ; preds = %426, %394
  %396 = load i32, i32* %j, align 4, !tbaa !1
  %397 = icmp slt i32 %396, 4
  br i1 %397, label %398, label %429

; <label>:398                                     ; preds = %395
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %399

; <label>:399                                     ; preds = %422, %398
  %400 = load i32, i32* %k, align 4, !tbaa !1
  %401 = icmp slt i32 %400, 1
  br i1 %401, label %402, label %425

; <label>:402                                     ; preds = %399
  %403 = load i32, i32* %k, align 4, !tbaa !1
  %404 = sext i32 %403 to i64
  %405 = load i32, i32* %j, align 4, !tbaa !1
  %406 = sext i32 %405 to i64
  %407 = load i32, i32* %i, align 4, !tbaa !1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [8 x [4 x [1 x i64]]], [8 x [4 x [1 x i64]]]* @g_1209, i32 0, i64 %408
  %410 = getelementptr inbounds [4 x [1 x i64]], [4 x [1 x i64]]* %409, i32 0, i64 %406
  %411 = getelementptr inbounds [1 x i64], [1 x i64]* %410, i32 0, i64 %404
  %412 = load i64, i64* %411, align 8, !tbaa !7
  %413 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %412, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 %413)
  %414 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %421

; <label>:416                                     ; preds = %402
  %417 = load i32, i32* %i, align 4, !tbaa !1
  %418 = load i32, i32* %j, align 4, !tbaa !1
  %419 = load i32, i32* %k, align 4, !tbaa !1
  %420 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 %417, i32 %418, i32 %419)
  br label %421

; <label>:421                                     ; preds = %416, %402
  br label %422

; <label>:422                                     ; preds = %421
  %423 = load i32, i32* %k, align 4, !tbaa !1
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %k, align 4, !tbaa !1
  br label %399

; <label>:425                                     ; preds = %399
  br label %426

; <label>:426                                     ; preds = %425
  %427 = load i32, i32* %j, align 4, !tbaa !1
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %j, align 4, !tbaa !1
  br label %395

; <label>:429                                     ; preds = %395
  br label %430

; <label>:430                                     ; preds = %429
  %431 = load i32, i32* %i, align 4, !tbaa !1
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %i, align 4, !tbaa !1
  br label %391

; <label>:433                                     ; preds = %391
  %434 = load volatile i32, i32* @g_1319, align 4, !tbaa !1
  %435 = sext i32 %434 to i64
  %436 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %435, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %436)
  %437 = load i16, i16* @g_1365, align 2, !tbaa !10
  %438 = sext i16 %437 to i64
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %438, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %439)
  %440 = load volatile i32, i32* @g_1413, align 4, !tbaa !1
  %441 = zext i32 %440 to i64
  %442 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %441, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %442)
  %443 = load i16, i16* @g_1455, align 2, !tbaa !10
  %444 = zext i16 %443 to i64
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %444, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %445)
  %446 = load i64, i64* @g_1461, align 8, !tbaa !7
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %447)
  %448 = load i64, i64* @g_1499, align 8, !tbaa !7
  %449 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %448, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %449)
  %450 = load i32, i32* @g_1549, align 4, !tbaa !1
  %451 = sext i32 %450 to i64
  %452 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %451, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %452)
  %453 = load i32, i32* @g_1766, align 4, !tbaa !1
  %454 = zext i32 %453 to i64
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %455)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %456

; <label>:456                                     ; preds = %496, %433
  %457 = load i32, i32* %i, align 4, !tbaa !1
  %458 = icmp slt i32 %457, 5
  br i1 %458, label %459, label %499

; <label>:459                                     ; preds = %456
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %460

; <label>:460                                     ; preds = %492, %459
  %461 = load i32, i32* %j, align 4, !tbaa !1
  %462 = icmp slt i32 %461, 10
  br i1 %462, label %463, label %495

; <label>:463                                     ; preds = %460
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %464

; <label>:464                                     ; preds = %488, %463
  %465 = load i32, i32* %k, align 4, !tbaa !1
  %466 = icmp slt i32 %465, 5
  br i1 %466, label %467, label %491

; <label>:467                                     ; preds = %464
  %468 = load i32, i32* %k, align 4, !tbaa !1
  %469 = sext i32 %468 to i64
  %470 = load i32, i32* %j, align 4, !tbaa !1
  %471 = sext i32 %470 to i64
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [5 x [10 x [5 x i32]]], [5 x [10 x [5 x i32]]]* @g_2127, i32 0, i64 %473
  %475 = getelementptr inbounds [10 x [5 x i32]], [10 x [5 x i32]]* %474, i32 0, i64 %471
  %476 = getelementptr inbounds [5 x i32], [5 x i32]* %475, i32 0, i64 %469
  %477 = load i32, i32* %476, align 4, !tbaa !1
  %478 = zext i32 %477 to i64
  %479 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %478, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i32 %479)
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %487

; <label>:482                                     ; preds = %467
  %483 = load i32, i32* %i, align 4, !tbaa !1
  %484 = load i32, i32* %j, align 4, !tbaa !1
  %485 = load i32, i32* %k, align 4, !tbaa !1
  %486 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 %483, i32 %484, i32 %485)
  br label %487

; <label>:487                                     ; preds = %482, %467
  br label %488

; <label>:488                                     ; preds = %487
  %489 = load i32, i32* %k, align 4, !tbaa !1
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %k, align 4, !tbaa !1
  br label %464

; <label>:491                                     ; preds = %464
  br label %492

; <label>:492                                     ; preds = %491
  %493 = load i32, i32* %j, align 4, !tbaa !1
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %j, align 4, !tbaa !1
  br label %460

; <label>:495                                     ; preds = %460
  br label %496

; <label>:496                                     ; preds = %495
  %497 = load i32, i32* %i, align 4, !tbaa !1
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %i, align 4, !tbaa !1
  br label %456

; <label>:499                                     ; preds = %456
  %500 = load volatile i16, i16* @g_2169, align 2, !tbaa !10
  %501 = zext i16 %500 to i64
  %502 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %501, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %502)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %503

; <label>:503                                     ; preds = %531, %499
  %504 = load i32, i32* %i, align 4, !tbaa !1
  %505 = icmp slt i32 %504, 2
  br i1 %505, label %506, label %534

; <label>:506                                     ; preds = %503
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %507

; <label>:507                                     ; preds = %527, %506
  %508 = load i32, i32* %j, align 4, !tbaa !1
  %509 = icmp slt i32 %508, 9
  br i1 %509, label %510, label %530

; <label>:510                                     ; preds = %507
  %511 = load i32, i32* %j, align 4, !tbaa !1
  %512 = sext i32 %511 to i64
  %513 = load i32, i32* %i, align 4, !tbaa !1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [2 x [9 x i8]], [2 x [9 x i8]]* @g_2237, i32 0, i64 %514
  %516 = getelementptr inbounds [9 x i8], [9 x i8]* %515, i32 0, i64 %512
  %517 = load i8, i8* %516, align 1, !tbaa !9
  %518 = zext i8 %517 to i64
  %519 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %518, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i32 %519)
  %520 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %526

; <label>:522                                     ; preds = %510
  %523 = load i32, i32* %i, align 4, !tbaa !1
  %524 = load i32, i32* %j, align 4, !tbaa !1
  %525 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %523, i32 %524)
  br label %526

; <label>:526                                     ; preds = %522, %510
  br label %527

; <label>:527                                     ; preds = %526
  %528 = load i32, i32* %j, align 4, !tbaa !1
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %j, align 4, !tbaa !1
  br label %507

; <label>:530                                     ; preds = %507
  br label %531

; <label>:531                                     ; preds = %530
  %532 = load i32, i32* %i, align 4, !tbaa !1
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %i, align 4, !tbaa !1
  br label %503

; <label>:534                                     ; preds = %503
  %535 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1229375414, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %535)
  %536 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %536)
  %537 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %538 = zext i32 %537 to i64
  %539 = xor i64 %538, 4294967295
  %540 = trunc i64 %539 to i32
  %541 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %540, i32 %541)
  %542 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %542) #1
  %543 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %543) #1
  %544 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %544) #1
  %545 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %545) #1
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
  %l_2 = alloca i32, align 4
  %l_7 = alloca i8, align 1
  %l_2871 = alloca [5 x i8***], align 16
  %l_2870 = alloca i8****, align 8
  %l_2874 = alloca i8, align 1
  %l_2875 = alloca i32, align 4
  %l_2876 = alloca i32*, align 8
  %l_2877 = alloca [7 x [9 x i32**]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32* %l_2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1410549206, i32* %l_2, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_7) #1
  store i8 -108, i8* %l_7, align 1, !tbaa !9
  %2 = bitcast [5 x i8***]* %l_2871 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %2) #1
  %3 = bitcast i8***** %l_2870 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = getelementptr inbounds [5 x i8***], [5 x i8***]* %l_2871, i32 0, i64 2
  store i8**** %4, i8***** %l_2870, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2874) #1
  store i8 -1, i8* %l_2874, align 1, !tbaa !9
  %5 = bitcast i32* %l_2875 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -5, i32* %l_2875, align 4, !tbaa !1
  %6 = bitcast i32** %l_2876 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_529, i32** %l_2876, align 8, !tbaa !5
  %7 = bitcast [7 x [9 x i32**]]* %l_2877 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %7) #1
  %8 = getelementptr inbounds [7 x [9 x i32**]], [7 x [9 x i32**]]* %l_2877, i64 0, i64 0
  %9 = getelementptr inbounds [9 x i32**], [9 x i32**]* %8, i64 0, i64 0
  store i32** @g_677, i32*** %9, !tbaa !5
  %10 = getelementptr inbounds i32**, i32*** %9, i64 1
  store i32** @g_112, i32*** %10, !tbaa !5
  %11 = getelementptr inbounds i32**, i32*** %10, i64 1
  store i32** null, i32*** %11, !tbaa !5
  %12 = getelementptr inbounds i32**, i32*** %11, i64 1
  store i32** null, i32*** %12, !tbaa !5
  %13 = getelementptr inbounds i32**, i32*** %12, i64 1
  store i32** @g_112, i32*** %13, !tbaa !5
  %14 = getelementptr inbounds i32**, i32*** %13, i64 1
  store i32** @g_677, i32*** %14, !tbaa !5
  %15 = getelementptr inbounds i32**, i32*** %14, i64 1
  store i32** @g_677, i32*** %15, !tbaa !5
  %16 = getelementptr inbounds i32**, i32*** %15, i64 1
  store i32** @g_112, i32*** %16, !tbaa !5
  %17 = getelementptr inbounds i32**, i32*** %16, i64 1
  store i32** @g_677, i32*** %17, !tbaa !5
  %18 = getelementptr inbounds [9 x i32**], [9 x i32**]* %8, i64 1
  %19 = getelementptr inbounds [9 x i32**], [9 x i32**]* %18, i64 0, i64 0
  store i32** null, i32*** %19, !tbaa !5
  %20 = getelementptr inbounds i32**, i32*** %19, i64 1
  store i32** @g_112, i32*** %20, !tbaa !5
  %21 = getelementptr inbounds i32**, i32*** %20, i64 1
  store i32** @g_112, i32*** %21, !tbaa !5
  %22 = getelementptr inbounds i32**, i32*** %21, i64 1
  store i32** @g_677, i32*** %22, !tbaa !5
  %23 = getelementptr inbounds i32**, i32*** %22, i64 1
  store i32** %l_2876, i32*** %23, !tbaa !5
  %24 = getelementptr inbounds i32**, i32*** %23, i64 1
  store i32** %l_2876, i32*** %24, !tbaa !5
  %25 = getelementptr inbounds i32**, i32*** %24, i64 1
  store i32** %l_2876, i32*** %25, !tbaa !5
  %26 = getelementptr inbounds i32**, i32*** %25, i64 1
  store i32** %l_2876, i32*** %26, !tbaa !5
  %27 = getelementptr inbounds i32**, i32*** %26, i64 1
  store i32** @g_677, i32*** %27, !tbaa !5
  %28 = getelementptr inbounds [9 x i32**], [9 x i32**]* %18, i64 1
  %29 = getelementptr inbounds [9 x i32**], [9 x i32**]* %28, i64 0, i64 0
  store i32** @g_112, i32*** %29, !tbaa !5
  %30 = getelementptr inbounds i32**, i32*** %29, i64 1
  store i32** %l_2876, i32*** %30, !tbaa !5
  %31 = getelementptr inbounds i32**, i32*** %30, i64 1
  store i32** @g_112, i32*** %31, !tbaa !5
  %32 = getelementptr inbounds i32**, i32*** %31, i64 1
  store i32** @g_677, i32*** %32, !tbaa !5
  %33 = getelementptr inbounds i32**, i32*** %32, i64 1
  store i32** null, i32*** %33, !tbaa !5
  %34 = getelementptr inbounds i32**, i32*** %33, i64 1
  store i32** @g_112, i32*** %34, !tbaa !5
  %35 = getelementptr inbounds i32**, i32*** %34, i64 1
  store i32** @g_677, i32*** %35, !tbaa !5
  %36 = getelementptr inbounds i32**, i32*** %35, i64 1
  store i32** null, i32*** %36, !tbaa !5
  %37 = getelementptr inbounds i32**, i32*** %36, i64 1
  store i32** @g_677, i32*** %37, !tbaa !5
  %38 = getelementptr inbounds [9 x i32**], [9 x i32**]* %28, i64 1
  %39 = getelementptr inbounds [9 x i32**], [9 x i32**]* %38, i64 0, i64 0
  store i32** @g_677, i32*** %39, !tbaa !5
  %40 = getelementptr inbounds i32**, i32*** %39, i64 1
  store i32** null, i32*** %40, !tbaa !5
  %41 = getelementptr inbounds i32**, i32*** %40, i64 1
  store i32** @g_677, i32*** %41, !tbaa !5
  %42 = getelementptr inbounds i32**, i32*** %41, i64 1
  store i32** @g_112, i32*** %42, !tbaa !5
  %43 = getelementptr inbounds i32**, i32*** %42, i64 1
  store i32** null, i32*** %43, !tbaa !5
  %44 = getelementptr inbounds i32**, i32*** %43, i64 1
  store i32** @g_677, i32*** %44, !tbaa !5
  %45 = getelementptr inbounds i32**, i32*** %44, i64 1
  store i32** @g_112, i32*** %45, !tbaa !5
  %46 = getelementptr inbounds i32**, i32*** %45, i64 1
  store i32** %l_2876, i32*** %46, !tbaa !5
  %47 = getelementptr inbounds i32**, i32*** %46, i64 1
  store i32** @g_112, i32*** %47, !tbaa !5
  %48 = getelementptr inbounds [9 x i32**], [9 x i32**]* %38, i64 1
  %49 = getelementptr inbounds [9 x i32**], [9 x i32**]* %48, i64 0, i64 0
  store i32** @g_677, i32*** %49, !tbaa !5
  %50 = getelementptr inbounds i32**, i32*** %49, i64 1
  store i32** %l_2876, i32*** %50, !tbaa !5
  %51 = getelementptr inbounds i32**, i32*** %50, i64 1
  store i32** @g_677, i32*** %51, !tbaa !5
  %52 = getelementptr inbounds i32**, i32*** %51, i64 1
  store i32** @g_677, i32*** %52, !tbaa !5
  %53 = getelementptr inbounds i32**, i32*** %52, i64 1
  store i32** %l_2876, i32*** %53, !tbaa !5
  %54 = getelementptr inbounds i32**, i32*** %53, i64 1
  store i32** @g_677, i32*** %54, !tbaa !5
  %55 = getelementptr inbounds i32**, i32*** %54, i64 1
  store i32** @g_112, i32*** %55, !tbaa !5
  %56 = getelementptr inbounds i32**, i32*** %55, i64 1
  store i32** @g_677, i32*** %56, !tbaa !5
  %57 = getelementptr inbounds i32**, i32*** %56, i64 1
  store i32** null, i32*** %57, !tbaa !5
  %58 = getelementptr inbounds [9 x i32**], [9 x i32**]* %48, i64 1
  %59 = getelementptr inbounds [9 x i32**], [9 x i32**]* %58, i64 0, i64 0
  store i32** @g_677, i32*** %59, !tbaa !5
  %60 = getelementptr inbounds i32**, i32*** %59, i64 1
  store i32** null, i32*** %60, !tbaa !5
  %61 = getelementptr inbounds i32**, i32*** %60, i64 1
  store i32** @g_112, i32*** %61, !tbaa !5
  %62 = getelementptr inbounds i32**, i32*** %61, i64 1
  store i32** @g_677, i32*** %62, !tbaa !5
  %63 = getelementptr inbounds i32**, i32*** %62, i64 1
  store i32** %l_2876, i32*** %63, !tbaa !5
  %64 = getelementptr inbounds i32**, i32*** %63, i64 1
  store i32** null, i32*** %64, !tbaa !5
  %65 = getelementptr inbounds i32**, i32*** %64, i64 1
  store i32** @g_677, i32*** %65, !tbaa !5
  %66 = getelementptr inbounds i32**, i32*** %65, i64 1
  store i32** @g_677, i32*** %66, !tbaa !5
  %67 = getelementptr inbounds i32**, i32*** %66, i64 1
  store i32** @g_112, i32*** %67, !tbaa !5
  %68 = getelementptr inbounds [9 x i32**], [9 x i32**]* %58, i64 1
  %69 = getelementptr inbounds [9 x i32**], [9 x i32**]* %68, i64 0, i64 0
  store i32** @g_677, i32*** %69, !tbaa !5
  %70 = getelementptr inbounds i32**, i32*** %69, i64 1
  store i32** %l_2876, i32*** %70, !tbaa !5
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  store i32** @g_112, i32*** %71, !tbaa !5
  %72 = getelementptr inbounds i32**, i32*** %71, i64 1
  store i32** null, i32*** %72, !tbaa !5
  %73 = getelementptr inbounds i32**, i32*** %72, i64 1
  store i32** @g_677, i32*** %73, !tbaa !5
  %74 = getelementptr inbounds i32**, i32*** %73, i64 1
  store i32** null, i32*** %74, !tbaa !5
  %75 = getelementptr inbounds i32**, i32*** %74, i64 1
  store i32** @g_112, i32*** %75, !tbaa !5
  %76 = getelementptr inbounds i32**, i32*** %75, i64 1
  store i32** %l_2876, i32*** %76, !tbaa !5
  %77 = getelementptr inbounds i32**, i32*** %76, i64 1
  store i32** @g_677, i32*** %77, !tbaa !5
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %80

; <label>:80                                      ; preds = %87, %0
  %81 = load i32, i32* %i, align 4, !tbaa !1
  %82 = icmp slt i32 %81, 5
  br i1 %82, label %83, label %90

; <label>:83                                      ; preds = %80
  %84 = load i32, i32* %i, align 4, !tbaa !1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [5 x i8***], [5 x i8***]* %l_2871, i32 0, i64 %85
  store i8*** getelementptr inbounds ([9 x [3 x i8**]], [9 x [3 x i8**]]* @g_451, i32 0, i64 2, i64 1), i8**** %86, align 8, !tbaa !5
  br label %87

; <label>:87                                      ; preds = %83
  %88 = load i32, i32* %i, align 4, !tbaa !1
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %i, align 4, !tbaa !1
  br label %80

; <label>:90                                      ; preds = %80
  %91 = load i32, i32* %l_2, align 4, !tbaa !1
  %92 = zext i32 %91 to i64
  %93 = load i32, i32* %l_2, align 4, !tbaa !1
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* @g_6, align 2, !tbaa !10
  %95 = load i8, i8* %l_7, align 1, !tbaa !9
  %96 = sext i8 %95 to i32
  %97 = call i32 @func_3(i16 signext %94, i32 %96)
  %98 = load i8, i8* %l_7, align 1, !tbaa !9
  %99 = sext i8 %98 to i16
  %100 = load i8****, i8***** %l_2870, align 8, !tbaa !5
  %101 = icmp eq i8**** getelementptr inbounds ([3 x [7 x i8***]], [3 x [7 x i8***]]* @g_2692, i32 0, i64 2, i64 5), %100
  %102 = zext i1 %101 to i32
  %103 = trunc i32 %102 to i8
  %104 = load i16*, i16** @g_2168, align 8, !tbaa !5
  %105 = load volatile i16, i16* %104, align 2, !tbaa !10
  %106 = zext i16 %105 to i64
  %107 = load i64, i64* @g_21, align 8, !tbaa !7
  %108 = xor i64 %106, %107
  %109 = trunc i64 %108 to i8
  %110 = load i8, i8* %l_2874, align 1, !tbaa !9
  %111 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %109, i8 zeroext %110)
  %112 = load i8*, i8** @g_2695, align 8, !tbaa !5
  store i8 %111, i8* %112, align 1, !tbaa !9
  %113 = zext i8 %111 to i32
  store i32 %113, i32* %l_2875, align 4, !tbaa !1
  %114 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %103, i32 %113)
  %115 = zext i8 %114 to i32
  %116 = load i32, i32* %l_2, align 4, !tbaa !1
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %99, i32 %118)
  %120 = sext i16 %119 to i32
  %121 = load i8, i8* %l_7, align 1, !tbaa !9
  %122 = sext i8 %121 to i32
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

; <label>:125                                     ; preds = %90
  %126 = load i8, i8* %l_7, align 1, !tbaa !9
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br label %129

; <label>:129                                     ; preds = %125, %90
  %130 = phi i1 [ false, %90 ], [ %128, %125 ]
  %131 = zext i1 %130 to i32
  %132 = load i8, i8* %l_7, align 1, !tbaa !9
  %133 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext -7, i8 zeroext %132)
  %134 = zext i8 %133 to i64
  %135 = xor i64 -8598024194590600975, %134
  %136 = icmp uge i64 %92, %135
  %137 = zext i1 %136 to i32
  %138 = load i32*, i32** @g_778, align 8, !tbaa !5
  %139 = load i32, i32* %138, align 4, !tbaa !1
  %140 = and i32 %139, %137
  store i32 %140, i32* %138, align 4, !tbaa !1
  %141 = load i8, i8* %l_7, align 1, !tbaa !9
  %142 = load i32*, i32** %l_2876, align 8, !tbaa !5
  %143 = load i32**, i32*** @g_548, align 8, !tbaa !5
  store i32* %142, i32** %143, align 8, !tbaa !5
  %144 = load volatile i32**, i32*** @g_986, align 8, !tbaa !5
  store i32* %142, i32** %144, align 8, !tbaa !5
  %145 = load i32*, i32** %l_2876, align 8, !tbaa !5
  %146 = load i32, i32* %145, align 4, !tbaa !1
  %147 = trunc i32 %146 to i16
  %148 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast [7 x [9 x i32**]]* %l_2877 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %150) #1
  %151 = bitcast i32** %l_2876 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i32* %l_2875 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2874) #1
  %153 = bitcast i8***** %l_2870 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast [5 x i8***]* %l_2871 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %154) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_7) #1
  %155 = bitcast i32* %l_2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  ret i16 %147
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @func_3(i16 signext %p_4, i32 %p_5) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %l_20 = alloca i64*, align 8
  %l_28 = alloca i32, align 4
  %l_30 = alloca i32*, align 8
  %l_1462 = alloca i32, align 4
  %l_1463 = alloca i32, align 4
  %l_1716 = alloca i32*, align 8
  %l_1717 = alloca i32*, align 8
  %l_2197 = alloca i32**, align 8
  %l_2206 = alloca i32**, align 8
  %l_2207 = alloca i64, align 8
  %l_2208 = alloca i64*, align 8
  %l_2209 = alloca i64*, align 8
  %l_2214 = alloca i32, align 4
  %l_2215 = alloca [1 x i8*], align 8
  %l_2216 = alloca i8, align 1
  %l_2235 = alloca i8**, align 8
  %l_2294 = alloca i64, align 8
  %l_2335 = alloca i64**, align 8
  %l_2334 = alloca i64***, align 8
  %l_2333 = alloca i64****, align 8
  %l_2354 = alloca i32, align 4
  %l_2384 = alloca [9 x i32*], align 16
  %l_2416 = alloca i32, align 4
  %l_2450 = alloca i32, align 4
  %l_2451 = alloca [8 x [3 x i8]], align 16
  %l_2478 = alloca i16**, align 8
  %l_2502 = alloca i32, align 4
  %l_2533 = alloca i32, align 4
  %l_2537 = alloca [2 x [9 x i8]], align 16
  %l_2590 = alloca i32****, align 8
  %l_2589 = alloca i32*****, align 8
  %l_2678 = alloca i32, align 4
  %l_2686 = alloca i32, align 4
  %l_2696 = alloca i8****, align 8
  %l_2818 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i16 %p_4, i16* %1, align 2, !tbaa !10
  store i32 %p_5, i32* %2, align 4, !tbaa !1
  %3 = bitcast i64** %l_20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64* @g_21, i64** %l_20, align 8, !tbaa !5
  %4 = bitcast i32* %l_28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %l_28, align 4, !tbaa !1
  %5 = bitcast i32** %l_30 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_31, i32** %l_30, align 8, !tbaa !5
  %6 = bitcast i32* %l_1462 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -87253086, i32* %l_1462, align 4, !tbaa !1
  %7 = bitcast i32* %l_1463 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %l_1463, align 4, !tbaa !1
  %8 = bitcast i32** %l_1716 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* null, i32** %l_1716, align 8, !tbaa !5
  %9 = bitcast i32** %l_1717 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_352, i32** %l_1717, align 8, !tbaa !5
  %10 = bitcast i32*** %l_2197 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32** getelementptr inbounds ([7 x [7 x i32*]], [7 x [7 x i32*]]* @g_13, i32 0, i64 4, i64 1), i32*** %l_2197, align 8, !tbaa !5
  %11 = bitcast i32*** %l_2206 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32** @g_1091, i32*** %l_2206, align 8, !tbaa !5
  %12 = bitcast i64* %l_2207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 -2160193871733984248, i64* %l_2207, align 8, !tbaa !7
  %13 = bitcast i64** %l_2208 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64* @g_168, i64** %l_2208, align 8, !tbaa !5
  %14 = bitcast i64** %l_2209 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64* @g_1499, i64** %l_2209, align 8, !tbaa !5
  %15 = bitcast i32* %l_2214 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 7, i32* %l_2214, align 4, !tbaa !1
  %16 = bitcast [1 x i8*]* %l_2215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_2216) #1
  store i8 116, i8* %l_2216, align 1, !tbaa !9
  %17 = bitcast i8*** %l_2235 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i8** @g_452, i8*** %l_2235, align 8, !tbaa !5
  %18 = bitcast i64* %l_2294 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64 7942040199888088367, i64* %l_2294, align 8, !tbaa !7
  %19 = bitcast i64*** %l_2335 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64** %l_2209, i64*** %l_2335, align 8, !tbaa !5
  %20 = bitcast i64**** %l_2334 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i64*** %l_2335, i64**** %l_2334, align 8, !tbaa !5
  %21 = bitcast i64***** %l_2333 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i64**** %l_2334, i64***** %l_2333, align 8, !tbaa !5
  %22 = bitcast i32* %l_2354 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1312597308, i32* %l_2354, align 4, !tbaa !1
  %23 = bitcast [9 x i32*]* %l_2384 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %23) #1
  %24 = bitcast [9 x i32*]* %l_2384 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast ([9 x i32*]* @func_3.l_2384 to i8*), i64 72, i32 16, i1 false)
  %25 = bitcast i32* %l_2416 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 -1676178792, i32* %l_2416, align 4, !tbaa !1
  %26 = bitcast i32* %l_2450 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 1, i32* %l_2450, align 4, !tbaa !1
  %27 = bitcast [8 x [3 x i8]]* %l_2451 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %27) #1
  %28 = bitcast [8 x [3 x i8]]* %l_2451 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* getelementptr inbounds ([8 x [3 x i8]], [8 x [3 x i8]]* @func_3.l_2451, i32 0, i32 0, i32 0), i64 24, i32 16, i1 false)
  %29 = bitcast i16*** %l_2478 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i16** getelementptr inbounds ([4 x i16*], [4 x i16*]* @g_122, i32 0, i64 2), i16*** %l_2478, align 8, !tbaa !5
  %30 = bitcast i32* %l_2502 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 1809844781, i32* %l_2502, align 4, !tbaa !1
  %31 = bitcast i32* %l_2533 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 1961720727, i32* %l_2533, align 4, !tbaa !1
  %32 = bitcast [2 x [9 x i8]]* %l_2537 to i8*
  call void @llvm.lifetime.start(i64 18, i8* %32) #1
  %33 = bitcast [2 x [9 x i8]]* %l_2537 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* getelementptr inbounds ([2 x [9 x i8]], [2 x [9 x i8]]* @func_3.l_2537, i32 0, i32 0, i32 0), i64 18, i32 16, i1 false)
  %34 = bitcast i32***** %l_2590 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i32**** null, i32***** %l_2590, align 8, !tbaa !5
  %35 = bitcast i32****** %l_2589 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i32***** %l_2590, i32****** %l_2589, align 8, !tbaa !5
  %36 = bitcast i32* %l_2678 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 121136878, i32* %l_2678, align 4, !tbaa !1
  %37 = bitcast i32* %l_2686 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 1738170062, i32* %l_2686, align 4, !tbaa !1
  %38 = bitcast i8***** %l_2696 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i8**** null, i8***** %l_2696, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2818) #1
  store i8 34, i8* %l_2818, align 1, !tbaa !9
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %41

; <label>:41                                      ; preds = %48, %0
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %51

; <label>:44                                      ; preds = %41
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1 x i8*], [1 x i8*]* %l_2215, i32 0, i64 %46
  store i8* @g_355, i8** %47, align 8, !tbaa !5
  br label %48

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i, align 4, !tbaa !1
  br label %41

; <label>:51                                      ; preds = %41
  %52 = load i16, i16* %1, align 2, !tbaa !10
  %53 = sext i16 %52 to i32
  %54 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2818) #1
  %56 = bitcast i8***** %l_2696 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %l_2686 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %l_2678 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32****** %l_2589 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32***** %l_2590 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast [2 x [9 x i8]]* %l_2537 to i8*
  call void @llvm.lifetime.end(i64 18, i8* %61) #1
  %62 = bitcast i32* %l_2533 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %l_2502 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i16*** %l_2478 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast [8 x [3 x i8]]* %l_2451 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %65) #1
  %66 = bitcast i32* %l_2450 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %l_2416 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast [9 x i32*]* %l_2384 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %68) #1
  %69 = bitcast i32* %l_2354 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i64***** %l_2333 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i64**** %l_2334 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i64*** %l_2335 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i64* %l_2294 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i8*** %l_2235 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2216) #1
  %75 = bitcast [1 x i8*]* %l_2215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32* %l_2214 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i64** %l_2209 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i64** %l_2208 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i64* %l_2207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i32*** %l_2206 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i32*** %l_2197 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32** %l_1717 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i32** %l_1716 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i32* %l_1463 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %l_1462 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32** %l_30 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32* %l_28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i64** %l_20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  ret i32 %53
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
