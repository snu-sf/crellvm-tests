; ModuleID = '00616.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_8 = internal global [2 x i32] [i32 -1650143117, i32 -1650143117], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"g_8[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_13 = internal global i16 -6396, align 2
@.str.3 = private unnamed_addr constant [5 x i8] c"g_13\00", align 1
@g_39 = internal global [7 x [3 x i32]] [[3 x i32] [i32 -1781719766, i32 1296968569, i32 1296968569], [3 x i32] [i32 1296968569, i32 1301409902, i32 0], [3 x i32] [i32 -1781719766, i32 1301409902, i32 -1781719766], [3 x i32] [i32 1607156808, i32 1296968569, i32 0], [3 x i32] [i32 1607156808, i32 1607156808, i32 1296968569], [3 x i32] [i32 -1781719766, i32 1296968569, i32 1296968569], [3 x i32] [i32 1296968569, i32 1301409902, i32 0]], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"g_39[i][j]\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_63 = internal global [10 x i32] [i32 1, i32 -1, i32 1, i32 -1, i32 1, i32 -1, i32 1, i32 -1, i32 1, i32 -1], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"g_63[i]\00", align 1
@g_81 = internal global i8 70, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_86 = internal global i16 0, align 2
@.str.8 = private unnamed_addr constant [5 x i8] c"g_86\00", align 1
@g_95 = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_95\00", align 1
@g_112 = internal global [10 x [8 x [3 x i8]]] [[8 x [3 x i8]] [[3 x i8] c"\00\F6\F8", [3 x i8] c"\03\04X", [3 x i8] c"\00\08\E5", [3 x i8] c"\05\00\84", [3 x i8] c"\BE\01\82", [3 x i8] c"{\FF\00", [3 x i8] c"\FF\03\FF", [3 x i8] c"\01\FF\00"], [8 x [3 x i8]] [[3 x i8] c"\17w\DA", [3 x i8] c"\E5\FF\DA", [3 x i8] c"\FF\F8\00", [3 x i8] c"\D4\B4\FF", [3 x i8] c"\02P\00", [3 x i8] c"\BE\05\82", [3 x i8] c"c\09\E5", [3 x i8] c"\FFX\FF"], [8 x [3 x i8]] [[3 x i8] c"c\9F\05", [3 x i8] c"R\82\F6", [3 x i8] c"\04\F7\F7", [3 x i8] c"\FA\AB\9F", [3 x i8] c"\FFR\00", [3 x i8] c"\00\00t", [3 x i8] c"\01\FAc", [3 x i8] c"\B4\00\FD"], [8 x [3 x i8]] [[3 x i8] c"\D4R\01", [3 x i8] c"\01\AB\01", [3 x i8] c"b\F7@", [3 x i8] c"\03\82&", [3 x i8] c"P\9F\FF", [3 x i8] c"\00X\04", [3 x i8] c"@\09\08", [3 x i8] c"\09\05\03"], [8 x [3 x i8]] [[3 x i8] c"%PR", [3 x i8] c"\D6\B4\FF", [3 x i8] c"m\F8\84", [3 x i8] c"\00\FF\01", [3 x i8] c"\00w\D6", [3 x i8] c"m\FF\00", [3 x i8] c"\D6\03\09", [3 x i8] c"%\FF\01"], [8 x [3 x i8]] [[3 x i8] c"\09\01X", [3 x i8] c"@\FF\04", [3 x i8] c"\00\DAP", [3 x i8] c"Pm\17", [3 x i8] c"\03\17\00", [3 x i8] c"bb\F9", [3 x i8] c"\01\84\01", [3 x i8] c"\D4\08\F8"], [8 x [3 x i8]] [[3 x i8] c"\B4\00\09", [3 x i8] c"\01\D4\F8", [3 x i8] c"\00\F9\01", [3 x i8] c"\FF\A0\F9", [3 x i8] c"\FA&\00", [3 x i8] c"\04\F9\17", [3 x i8] c"R\BEP", [3 x i8] c"c\FF\04"], [8 x [3 x i8]] [[3 x i8] c"\FF\D6X", [3 x i8] c"c\01\01", [3 x i8] c"\BEc\09", [3 x i8] c"\02{\00", [3 x i8] c"\D4\FF\D6", [3 x i8] c"\FF\C1\01", [3 x i8] c"\E5\C1\84", [3 x i8] c"\17\FF\FF"], [8 x [3 x i8]] [[3 x i8] c"\01{R", [3 x i8] c"\FFc\03", [3 x i8] c"{\01\08", [3 x i8] c"\AB\D6\04", [3 x i8] c"\09@\05", [3 x i8] c"\08\AB\02", [3 x i8] c"\05\82\00", [3 x i8] c"\FF\02\FF"], [8 x [3 x i8]] [[3 x i8] c"\FF\F7\C1", [3 x i8] c"\01\09\FF", [3 x i8] c"\03\04\F6", [3 x i8] c"\9F%\01", [3 x i8] c"\03\DAR", [3 x i8] c"\01\E5\00", [3 x i8] c"\FF\FF\00", [3 x i8] c"\FF\FF\17"]], align 16
@.str.10 = private unnamed_addr constant [15 x i8] c"g_112[i][j][k]\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_143 = internal global i32 -1, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_143\00", align 1
@g_165 = internal global i8 2, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"g_165\00", align 1
@g_207 = internal global i32 -1, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_207\00", align 1
@g_252 = internal global [3 x [3 x [9 x i64]]] [[3 x [9 x i64]] [[9 x i64] [i64 -8966241251528658109, i64 -2151681100779721265, i64 1145579631190397969, i64 7874079868729995062, i64 7874079868729995062, i64 1145579631190397969, i64 -2151681100779721265, i64 -8966241251528658109, i64 -2151681100779721265], [9 x i64] [i64 6646122571555293020, i64 -2391966524364903026, i64 -6925686597908230356, i64 -6925686597908230356, i64 -2391966524364903026, i64 6646122571555293020, i64 -4953660340701329797, i64 6646122571555293020, i64 -2391966524364903026], [9 x i64] [i64 -3020957149985514127, i64 -2151681100779721265, i64 -2151681100779721265, i64 -3020957149985514127, i64 -8966241251528658109, i64 0, i64 -8966241251528658109, i64 -3020957149985514127, i64 -2151681100779721265]], [3 x [9 x i64]] [[9 x i64] [i64 0, i64 0, i64 -4953660340701329797, i64 -2391966524364903026, i64 4499100487786746019, i64 -2391966524364903026, i64 -4953660340701329797, i64 0, i64 0], [9 x i64] [i64 -2151681100779721265, i64 -3020957149985514127, i64 -8966241251528658109, i64 0, i64 -8966241251528658109, i64 -3020957149985514127, i64 -2151681100779721265, i64 -2151681100779721265, i64 -3020957149985514127], [9 x i64] [i64 -2391966524364903026, i64 6646122571555293020, i64 -4953660340701329797, i64 6646122571555293020, i64 -2391966524364903026, i64 -6925686597908230356, i64 -6925686597908230356, i64 -2391966524364903026, i64 6646122571555293020]], [3 x [9 x i64]] [[9 x i64] [i64 -2151681100779721265, i64 -8966241251528658109, i64 -2151681100779721265, i64 1145579631190397969, i64 7874079868729995062, i64 7874079868729995062, i64 1145579631190397969, i64 -2151681100779721265, i64 -8966241251528658109], [9 x i64] [i64 0, i64 -3244526995039408037, i64 -6925686597908230356, i64 -4953660340701329797, i64 -4953660340701329797, i64 -6925686597908230356, i64 -3244526995039408037, i64 0, i64 -3244526995039408037], [9 x i64] [i64 -3020957149985514127, i64 0, i64 1145579631190397969, i64 1145579631190397969, i64 0, i64 -3020957149985514127, i64 7874079868729995062, i64 -3020957149985514127, i64 0]]], align 16
@.str.15 = private unnamed_addr constant [15 x i8] c"g_252[i][j][k]\00", align 1
@g_254 = internal global i64 8, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_254\00", align 1
@g_260 = internal global i64 2, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_260\00", align 1
@g_274 = internal global i32 -1, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_274\00", align 1
@g_377 = internal global i32 1, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_377\00", align 1
@g_517 = internal global i16 -1, align 2
@.str.20 = private unnamed_addr constant [6 x i8] c"g_517\00", align 1
@g_607 = internal global i32 -9, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_607\00", align 1
@g_628 = internal global [5 x i16] zeroinitializer, align 2
@.str.22 = private unnamed_addr constant [9 x i8] c"g_628[i]\00", align 1
@g_767 = internal global i64 -1936278459108893750, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_767\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_825\00", align 1
@g_882 = internal global i32 -721323114, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_882\00", align 1
@g_884 = internal global i16 29477, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_884\00", align 1
@g_973 = internal global i32 -1, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_973\00", align 1
@g_999 = internal global i32 810803461, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_999\00", align 1
@g_1120 = internal global i32 5, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"g_1120\00", align 1
@g_1135 = internal global i8 -9, align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1135\00", align 1
@g_1137 = internal global i32 1, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1137\00", align 1
@g_1354 = internal global i8 -3, align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1354\00", align 1
@g_1477 = internal global i64 -7955145862793574379, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1477\00", align 1
@g_1577 = internal global [1 x i32] [i32 -6], align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"g_1577[i]\00", align 1
@g_1606 = internal global i16 -1, align 2
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1606\00", align 1
@g_1612 = internal global i16 25230, align 2
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1612\00", align 1
@g_1677 = internal global i64 -6, align 8
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1677\00", align 1
@g_1883 = internal global i64 1, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1883\00", align 1
@g_1942 = internal constant i32 -1669290532, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1942\00", align 1
@g_2265 = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"g_2265\00", align 1
@g_2316 = internal global [6 x [1 x [4 x i32]]] [[1 x [4 x i32]] [[4 x i32] [i32 -1764939287, i32 -1764939287, i32 -1764939287, i32 -1764939287]], [1 x [4 x i32]] [[4 x i32] [i32 -1764939287, i32 -1764939287, i32 -1764939287, i32 -1764939287]], [1 x [4 x i32]] [[4 x i32] [i32 -1764939287, i32 -1764939287, i32 -1764939287, i32 -1764939287]], [1 x [4 x i32]] [[4 x i32] [i32 -1764939287, i32 -1764939287, i32 -1764939287, i32 -1764939287]], [1 x [4 x i32]] [[4 x i32] [i32 -1764939287, i32 -1764939287, i32 -1764939287, i32 -1764939287]], [1 x [4 x i32]] [[4 x i32] [i32 -1764939287, i32 -1764939287, i32 -1764939287, i32 -1764939287]]], align 16
@.str.41 = private unnamed_addr constant [16 x i8] c"g_2316[i][j][k]\00", align 1
@g_2346 = internal global i32 1, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"g_2346\00", align 1
@g_2403 = internal global i64 2048520386538734047, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"g_2403\00", align 1
@g_2558 = internal global i8 -57, align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"g_2558\00", align 1
@g_2626 = internal global i64 8626292684733072064, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2626\00", align 1
@g_2831 = internal global i16 0, align 2
@.str.46 = private unnamed_addr constant [7 x i8] c"g_2831\00", align 1
@g_3132 = internal global i64 -9, align 8
@.str.47 = private unnamed_addr constant [7 x i8] c"g_3132\00", align 1
@g_3133 = internal global i32 0, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"g_3133\00", align 1
@g_3250 = internal global i16 1, align 2
@.str.49 = private unnamed_addr constant [7 x i8] c"g_3250\00", align 1
@g_3349 = internal global i16 -1, align 2
@.str.50 = private unnamed_addr constant [7 x i8] c"g_3349\00", align 1
@g_3361 = internal global i64 6958136066828277363, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"g_3361\00", align 1
@g_3520 = internal global i32 525682243, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_3520\00", align 1
@g_3521 = internal global i8 -36, align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"g_3521\00", align 1
@g_3522 = internal global i64 5060668042039411421, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"g_3522\00", align 1
@g_3526 = internal global i32 -6, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"g_3526\00", align 1
@g_3743 = internal global i16 -3361, align 2
@.str.56 = private unnamed_addr constant [7 x i8] c"g_3743\00", align 1
@g_3859 = internal constant [3 x [6 x [10 x i16]]] [[6 x [10 x i16]] [[10 x i16] [i16 -11327, i16 -1539, i16 0, i16 2700, i16 15281, i16 0, i16 -4, i16 1880, i16 -26637, i16 0], [10 x i16] [i16 1880, i16 -4, i16 1880, i16 -26637, i16 0, i16 1880, i16 -1, i16 1, i16 -26637, i16 -26637], [10 x i16] [i16 1, i16 -4, i16 31739, i16 0, i16 0, i16 31739, i16 -4, i16 1, i16 -11327, i16 0], [10 x i16] [i16 1, i16 -1, i16 1880, i16 0, i16 -26637, i16 1880, i16 -4, i16 1880, i16 -26637, i16 0], [10 x i16] [i16 1880, i16 -4, i16 1880, i16 -26637, i16 0, i16 1880, i16 -1, i16 1, i16 -26637, i16 -26637], [10 x i16] [i16 1, i16 -4, i16 31739, i16 0, i16 0, i16 31739, i16 -4, i16 1, i16 -11327, i16 0]], [6 x [10 x i16]] [[10 x i16] [i16 1, i16 -1, i16 1880, i16 0, i16 -26637, i16 1880, i16 -4, i16 1880, i16 -26637, i16 0], [10 x i16] [i16 1880, i16 -4, i16 1880, i16 -26637, i16 0, i16 1880, i16 -1, i16 1, i16 -26637, i16 -26637], [10 x i16] [i16 1, i16 -4, i16 31739, i16 0, i16 0, i16 31739, i16 -4, i16 1, i16 -11327, i16 0], [10 x i16] [i16 1, i16 -1, i16 1880, i16 0, i16 -26637, i16 1880, i16 -4, i16 1880, i16 -26637, i16 0], [10 x i16] [i16 1880, i16 -4, i16 1880, i16 -26637, i16 0, i16 1880, i16 -1, i16 1, i16 -26637, i16 -26637], [10 x i16] [i16 1, i16 -4, i16 31739, i16 0, i16 0, i16 31739, i16 -4, i16 1, i16 -11327, i16 0]], [6 x [10 x i16]] [[10 x i16] [i16 1, i16 -1, i16 1880, i16 0, i16 -26637, i16 1880, i16 -4, i16 1880, i16 -26637, i16 0], [10 x i16] [i16 1880, i16 -4, i16 1880, i16 -26637, i16 0, i16 1880, i16 -1, i16 1, i16 -26637, i16 -26637], [10 x i16] [i16 1, i16 -4, i16 31739, i16 0, i16 0, i16 31739, i16 -4, i16 1, i16 -11327, i16 0], [10 x i16] [i16 1, i16 -1, i16 1880, i16 0, i16 -26637, i16 1880, i16 -4, i16 1880, i16 -26637, i16 0], [10 x i16] [i16 1880, i16 -4, i16 1880, i16 -26637, i16 0, i16 1880, i16 -1, i16 1, i16 -26637, i16 -26637], [10 x i16] [i16 1, i16 -4, i16 31739, i16 0, i16 0, i16 31739, i16 -4, i16 1, i16 -11327, i16 0]]], align 16
@.str.57 = private unnamed_addr constant [16 x i8] c"g_3859[i][j][k]\00", align 1
@g_3863 = internal global i16 -5, align 2
@.str.58 = private unnamed_addr constant [7 x i8] c"g_3863\00", align 1
@g_3920 = internal global i16 -10, align 2
@.str.59 = private unnamed_addr constant [7 x i8] c"g_3920\00", align 1
@g_4048 = internal global i32 1506092820, align 4
@.str.60 = private unnamed_addr constant [7 x i8] c"g_4048\00", align 1
@g_4375 = internal global i16 5960, align 2
@.str.61 = private unnamed_addr constant [7 x i8] c"g_4375\00", align 1
@g_4402 = internal global [9 x [6 x [4 x i16]]] [[6 x [4 x i16]] [[4 x i16] [i16 0, i16 3957, i16 -28755, i16 15110], [4 x i16] [i16 9, i16 0, i16 0, i16 -13942], [4 x i16] [i16 1, i16 13606, i16 3938, i16 14957], [4 x i16] [i16 16441, i16 1, i16 3957, i16 0], [4 x i16] [i16 -13942, i16 6379, i16 -10818, i16 3938], [4 x i16] [i16 -1, i16 -26649, i16 -1, i16 -26649]], [6 x [4 x i16]] [[4 x i16] [i16 -22860, i16 -13942, i16 -1, i16 3957], [4 x i16] [i16 9520, i16 20484, i16 20391, i16 -10818], [4 x i16] [i16 -10818, i16 0, i16 3957, i16 20957], [4 x i16] [i16 -10818, i16 0, i16 20391, i16 1], [4 x i16] [i16 9520, i16 20957, i16 -1, i16 -28755], [4 x i16] [i16 -22860, i16 0, i16 -1, i16 0]], [6 x [4 x i16]] [[4 x i16] [i16 -1, i16 13606, i16 -10818, i16 1], [4 x i16] [i16 -13942, i16 16690, i16 0, i16 1], [4 x i16] [i16 -1, i16 26386, i16 -13942, i16 -13942], [4 x i16] [i16 16441, i16 16441, i16 6379, i16 0], [4 x i16] [i16 16690, i16 1, i16 26386, i16 -1], [4 x i16] [i16 20484, i16 1, i16 -4333, i16 26386]], [6 x [4 x i16]] [[4 x i16] [i16 15110, i16 1, i16 0, i16 -1], [4 x i16] [i16 1, i16 1, i16 9, i16 0], [4 x i16] [i16 3957, i16 16441, i16 1, i16 -13942], [4 x i16] [i16 0, i16 26386, i16 16441, i16 1], [4 x i16] [i16 0, i16 16690, i16 3938, i16 1], [4 x i16] [i16 -1, i16 13606, i16 0, i16 0]], [6 x [4 x i16]] [[4 x i16] [i16 20957, i16 0, i16 20957, i16 -28755], [4 x i16] [i16 -11822, i16 20957, i16 -31135, i16 1], [4 x i16] [i16 0, i16 0, i16 -1, i16 20957], [4 x i16] [i16 0, i16 0, i16 -1, i16 -10818], [4 x i16] [i16 0, i16 20484, i16 -31135, i16 3957], [4 x i16] [i16 -11822, i16 -13942, i16 20957, i16 -26649]], [6 x [4 x i16]] [[4 x i16] [i16 20957, i16 -26649, i16 0, i16 3938], [4 x i16] [i16 -1, i16 6379, i16 3938, i16 20391], [4 x i16] [i16 0, i16 0, i16 16441, i16 -31135], [4 x i16] [i16 0, i16 1, i16 1, i16 0], [4 x i16] [i16 3957, i16 -1, i16 9, i16 0], [4 x i16] [i16 1, i16 0, i16 0, i16 9520]], [6 x [4 x i16]] [[4 x i16] [i16 15110, i16 0, i16 -4333, i16 9520], [4 x i16] [i16 20484, i16 0, i16 26386, i16 0], [4 x i16] [i16 16690, i16 -1, i16 6379, i16 0], [4 x i16] [i16 16441, i16 1, i16 -13942, i16 -31135], [4 x i16] [i16 -1, i16 0, i16 0, i16 20391], [4 x i16] [i16 -13942, i16 6379, i16 -10818, i16 3938]], [6 x [4 x i16]] [[4 x i16] [i16 -1, i16 -26649, i16 -1, i16 -26649], [4 x i16] [i16 -22860, i16 -13942, i16 -1, i16 3957], [4 x i16] [i16 9520, i16 20484, i16 20391, i16 -10818], [4 x i16] [i16 -10818, i16 0, i16 3957, i16 20957], [4 x i16] [i16 -10818, i16 0, i16 20391, i16 1], [4 x i16] [i16 9520, i16 20957, i16 -1, i16 -28755]], [6 x [4 x i16]] [[4 x i16] [i16 -22860, i16 0, i16 -1, i16 0], [4 x i16] [i16 -1, i16 13606, i16 -10818, i16 1], [4 x i16] [i16 -13942, i16 16690, i16 0, i16 1], [4 x i16] [i16 -1, i16 26386, i16 -13942, i16 0], [4 x i16] [i16 -1, i16 -1, i16 3957, i16 -18993], [4 x i16] [i16 -26649, i16 14957, i16 1, i16 -10818]]], align 16
@.str.62 = private unnamed_addr constant [16 x i8] c"g_4402[i][j][k]\00", align 1
@g_4556 = internal global i16 1, align 2
@.str.63 = private unnamed_addr constant [7 x i8] c"g_4556\00", align 1
@g_4722 = internal global i32 -10, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"g_4722\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_38 = private unnamed_addr constant [1 x [2 x [5 x i32]]] [[2 x [5 x i32]] [[5 x i32] [i32 1168690413, i32 1168690413, i32 2002301853, i32 1387574697, i32 2002301853], [5 x i32] [i32 1168690413, i32 1168690413, i32 2002301853, i32 1387574697, i32 2002301853]]], align 16
@g_3184 = internal global i8* getelementptr (i8, i8* getelementptr inbounds ([10 x [8 x [3 x i8]]], [10 x [8 x [3 x i8]]]* @g_112, i32 0, i32 0, i32 0, i32 0), i64 207), align 8
@func_1.l_4549 = private unnamed_addr constant [7 x [9 x [1 x i8]]] [[9 x [1 x i8]] [[1 x i8] c"]", [1 x i8] c"\09", [1 x i8] c"\07", [1 x i8] c"\93", [1 x i8] c"\1A", [1 x i8] c"\01", [1 x i8] c"]", [1 x i8] c"\01", [1 x i8] c"\1A"], [9 x [1 x i8]] [[1 x i8] c"\93", [1 x i8] c"\07", [1 x i8] c"\09", [1 x i8] c"]", [1 x i8] c"\0E", [1 x i8] c"\C2", [1 x i8] c"\93", [1 x i8] c"\C2", [1 x i8] c"\0E"], [9 x [1 x i8]] [[1 x i8] c"]", [1 x i8] c"\09", [1 x i8] c"\07", [1 x i8] c"\93", [1 x i8] c"\1A", [1 x i8] c"\01", [1 x i8] c"]", [1 x i8] c"\01", [1 x i8] c"\1A"], [9 x [1 x i8]] [[1 x i8] c"\93", [1 x i8] c"\07", [1 x i8] c"\09", [1 x i8] c"]", [1 x i8] c"\0E", [1 x i8] c"\C2", [1 x i8] c"\93", [1 x i8] c"\C2", [1 x i8] c"\0E"], [9 x [1 x i8]] [[1 x i8] c"]", [1 x i8] c"\09", [1 x i8] c"\07", [1 x i8] c"\93", [1 x i8] c"\1A", [1 x i8] c"\01", [1 x i8] c"]", [1 x i8] c"\01", [1 x i8] c"\1A"], [9 x [1 x i8]] [[1 x i8] c"\93", [1 x i8] c"\07", [1 x i8] c"\09", [1 x i8] c"]", [1 x i8] c"\0E", [1 x i8] c"\C2", [1 x i8] c"\93", [1 x i8] c"\C2", [1 x i8] c"\0E"], [9 x [1 x i8]] [[1 x i8] c"]", [1 x i8] c"\09", [1 x i8] c"\07", [1 x i8] c"\93", [1 x i8] c"\1A", [1 x i8] c"\01", [1 x i8] c"]", [1 x i8] c"\01", [1 x i8] c"\1A"]], align 16
@g_1705 = internal global i16*** null, align 8
@func_1.l_4765 = private unnamed_addr constant [5 x [9 x [5 x i64]]] [[9 x [5 x i64]] [[5 x i64] [i64 -1, i64 5555034166799796103, i64 -7509508045145141378, i64 -1, i64 -7509508045145141378], [5 x i64] [i64 -1, i64 -1, i64 5201478511033073774, i64 -1156051039953121115, i64 5092668661064407555], [5 x i64] [i64 -1, i64 1, i64 3435899045723103170, i64 1958779828095510977, i64 1958779828095510977], [5 x i64] [i64 -1156051039953121115, i64 5232287623450749481, i64 -1156051039953121115, i64 2849142208953775245, i64 8719293224277695900], [5 x i64] [i64 3435899045723103170, i64 1, i64 -1, i64 -6042643533347526694, i64 0], [5 x i64] [i64 5201478511033073774, i64 -1, i64 -1, i64 5201478511033073774, i64 -1156051039953121115], [5 x i64] [i64 -7509508045145141378, i64 5555034166799796103, i64 -1, i64 0, i64 1], [5 x i64] [i64 0, i64 4, i64 -1156051039953121115, i64 4, i64 0], [5 x i64] [i64 5555034166799796103, i64 -6042643533347526694, i64 3435899045723103170, i64 0, i64 0]], [9 x [5 x i64]] [[5 x i64] [i64 -1, i64 2, i64 5201478511033073774, i64 5201478511033073774, i64 2], [5 x i64] [i64 1958779828095510977, i64 -1, i64 -7509508045145141378, i64 -6042643533347526694, i64 0], [5 x i64] [i64 4, i64 5201478511033073774, i64 0, i64 2849142208953775245, i64 0], [5 x i64] [i64 0, i64 0, i64 5555034166799796103, i64 1958779828095510977, i64 1], [5 x i64] [i64 4, i64 5092668661064407555, i64 -1, i64 -1156051039953121115, i64 -1156051039953121115], [5 x i64] [i64 1958779828095510977, i64 7, i64 1958779828095510977, i64 -1, i64 0], [5 x i64] [i64 -1, i64 5092668661064407555, i64 4, i64 2, i64 8719293224277695900], [5 x i64] [i64 5555034166799796103, i64 0, i64 0, i64 5555034166799796103, i64 1958779828095510977], [5 x i64] [i64 0, i64 5201478511033073774, i64 4, i64 8719293224277695900, i64 5092668661064407555]], [9 x [5 x i64]] [[5 x i64] [i64 -7509508045145141378, i64 -1, i64 1958779828095510977, i64 -1, i64 -7509508045145141378], [5 x i64] [i64 5201478511033073774, i64 2, i64 -1, i64 8719293224277695900, i64 -1], [5 x i64] [i64 3435899045723103170, i64 -6042643533347526694, i64 5555034166799796103, i64 5555034166799796103, i64 -6042643533347526694], [5 x i64] [i64 -1156051039953121115, i64 4, i64 0, i64 2, i64 2849142208953775245], [5 x i64] [i64 7, i64 0, i64 3435899045723103170, i64 -1, i64 3435899045723103170], [5 x i64] [i64 2849142208953775245, i64 2849142208953775245, i64 -1, i64 2, i64 0], [5 x i64] [i64 7, i64 -7509508045145141378, i64 1958779828095510977, i64 -6042643533347526694, i64 -6042643533347526694], [5 x i64] [i64 2, i64 8719293224277695900, i64 2, i64 4, i64 5092668661064407555], [5 x i64] [i64 1958779828095510977, i64 -7509508045145141378, i64 7, i64 5555034166799796103, i64 1]], [9 x [5 x i64]] [[5 x i64] [i64 -1, i64 2849142208953775245, i64 2849142208953775245, i64 -1, i64 2], [5 x i64] [i64 3435899045723103170, i64 0, i64 7, i64 1, i64 -7509508045145141378], [5 x i64] [i64 -1, i64 5232287623450749481, i64 2, i64 5232287623450749481, i64 -1], [5 x i64] [i64 0, i64 5555034166799796103, i64 1958779828095510977, i64 1, i64 -1], [5 x i64] [i64 -1156051039953121115, i64 5201478511033073774, i64 -1, i64 -1, i64 5201478511033073774], [5 x i64] [i64 -6042643533347526694, i64 7, i64 3435899045723103170, i64 5555034166799796103, i64 -1], [5 x i64] [i64 5232287623450749481, i64 -1, i64 -1, i64 4, i64 -1], [5 x i64] [i64 -1, i64 -1, i64 0, i64 -6042643533347526694, i64 -7509508045145141378], [5 x i64] [i64 5232287623450749481, i64 0, i64 -1156051039953121115, i64 2, i64 2]], [9 x [5 x i64]] [[5 x i64] [i64 -6042643533347526694, i64 0, i64 -6042643533347526694, i64 -1, i64 1], [5 x i64] [i64 -1156051039953121115, i64 0, i64 5232287623450749481, i64 5201478511033073774, i64 5092668661064407555], [5 x i64] [i64 0, i64 -1, i64 -1, i64 0, i64 -6042643533347526694], [5 x i64] [i64 -1, i64 -1, i64 5232287623450749481, i64 5092668661064407555, i64 0], [5 x i64] [i64 3435899045723103170, i64 7, i64 -6042643533347526694, i64 7, i64 3435899045723103170], [5 x i64] [i64 -1, i64 5201478511033073774, i64 -1156051039953121115, i64 5092668661064407555, i64 2849142208953775245], [5 x i64] [i64 1958779828095510977, i64 5555034166799796103, i64 0, i64 0, i64 5555034166799796103], [5 x i64] [i64 2, i64 5232287623450749481, i64 -1, i64 5201478511033073774, i64 2849142208953775245], [5 x i64] [i64 7, i64 0, i64 3435899045723103170, i64 -1, i64 3435899045723103170]]], align 16
@g_2189 = internal global [7 x [10 x i8****]] [[10 x i8****] [i8**** @g_907, i8**** @g_911, i8**** @g_907, i8**** null, i8**** null, i8**** @g_910, i8**** null, i8**** null, i8**** @g_907, i8**** @g_911], [10 x i8****] [i8**** null, i8**** @g_907, i8**** @g_910, i8**** @g_911, i8**** null, i8**** null, i8**** null, i8**** null, i8**** @g_911, i8**** @g_910], [10 x i8****] [i8**** null, i8**** null, i8**** @g_907, i8**** null, i8**** null, i8**** null, i8**** @g_907, i8**** null, i8**** null, i8**** null], [10 x i8****] [i8**** null, i8**** @g_910, i8**** null, i8**** null, i8**** null, i8**** @g_910, i8**** @g_907, i8**** @g_907, i8**** @g_910, i8**** null], [10 x i8****] [i8**** @g_907, i8**** null, i8**** null, i8**** @g_907, i8**** null, i8**** null, i8**** null, i8**** @g_907, i8**** null, i8**** null], [10 x i8****] [i8**** @g_910, i8**** @g_907, i8**** null, i8**** @g_907, i8**** @g_910, i8**** @g_911, i8**** null, i8**** null, i8**** @g_907, i8**** null], [10 x i8****] [i8**** null, i8**** @g_907, i8**** null, i8**** null, i8**** @g_907, i8**** null, i8**** null, i8**** null, i8**** @g_907, i8**** null]], align 16
@g_907 = internal global i8*** @g_908, align 8
@g_911 = internal global i8*** @g_908, align 8
@g_910 = internal global i8*** @g_908, align 8
@g_908 = internal global i8** @g_257, align 8
@g_257 = internal global i8* @g_81, align 8
@.str.65 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call signext i8 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* @g_8, i32 0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !1
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
  %111 = load i16, i16* @g_13, align 2, !tbaa !10
  %112 = zext i16 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %113)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %114

; <label>:114                                     ; preds = %142, %110
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = icmp slt i32 %115, 7
  br i1 %116, label %117, label %145

; <label>:117                                     ; preds = %114
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %118

; <label>:118                                     ; preds = %138, %117
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = icmp slt i32 %119, 3
  br i1 %120, label %121, label %141

; <label>:121                                     ; preds = %118
  %122 = load i32, i32* %j, align 4, !tbaa !1
  %123 = sext i32 %122 to i64
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [7 x [3 x i32]], [7 x [3 x i32]]* @g_39, i32 0, i64 %125
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %126, i32 0, i64 %123
  %128 = load i32, i32* %127, align 4, !tbaa !1
  %129 = zext i32 %128 to i64
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %130)
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

; <label>:133                                     ; preds = %121
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %135 = load i32, i32* %j, align 4, !tbaa !1
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %134, i32 %135)
  br label %137

; <label>:137                                     ; preds = %133, %121
  br label %138

; <label>:138                                     ; preds = %137
  %139 = load i32, i32* %j, align 4, !tbaa !1
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %j, align 4, !tbaa !1
  br label %118

; <label>:141                                     ; preds = %118
  br label %142

; <label>:142                                     ; preds = %141
  %143 = load i32, i32* %i, align 4, !tbaa !1
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %i, align 4, !tbaa !1
  br label %114

; <label>:145                                     ; preds = %114
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %146

; <label>:146                                     ; preds = %162, %145
  %147 = load i32, i32* %i, align 4, !tbaa !1
  %148 = icmp slt i32 %147, 10
  br i1 %148, label %149, label %165

; <label>:149                                     ; preds = %146
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [10 x i32], [10 x i32]* @g_63, i32 0, i64 %151
  %153 = load i32, i32* %152, align 4, !tbaa !1
  %154 = zext i32 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %155)
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

; <label>:158                                     ; preds = %149
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %159)
  br label %161

; <label>:161                                     ; preds = %158, %149
  br label %162

; <label>:162                                     ; preds = %161
  %163 = load i32, i32* %i, align 4, !tbaa !1
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %i, align 4, !tbaa !1
  br label %146

; <label>:165                                     ; preds = %146
  %166 = load i8, i8* @g_81, align 1, !tbaa !9
  %167 = zext i8 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %168)
  %169 = load i16, i16* @g_86, align 2, !tbaa !10
  %170 = zext i16 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %171)
  %172 = load i32, i32* @g_95, align 4, !tbaa !1
  %173 = sext i32 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %174)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:175                                     ; preds = %215, %165
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = icmp slt i32 %176, 10
  br i1 %177, label %178, label %218

; <label>:178                                     ; preds = %175
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %179

; <label>:179                                     ; preds = %211, %178
  %180 = load i32, i32* %j, align 4, !tbaa !1
  %181 = icmp slt i32 %180, 8
  br i1 %181, label %182, label %214

; <label>:182                                     ; preds = %179
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %183

; <label>:183                                     ; preds = %207, %182
  %184 = load i32, i32* %k, align 4, !tbaa !1
  %185 = icmp slt i32 %184, 3
  br i1 %185, label %186, label %210

; <label>:186                                     ; preds = %183
  %187 = load i32, i32* %k, align 4, !tbaa !1
  %188 = sext i32 %187 to i64
  %189 = load i32, i32* %j, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %i, align 4, !tbaa !1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [10 x [8 x [3 x i8]]], [10 x [8 x [3 x i8]]]* @g_112, i32 0, i64 %192
  %194 = getelementptr inbounds [8 x [3 x i8]], [8 x [3 x i8]]* %193, i32 0, i64 %190
  %195 = getelementptr inbounds [3 x i8], [3 x i8]* %194, i32 0, i64 %188
  %196 = load i8, i8* %195, align 1, !tbaa !9
  %197 = sext i8 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %198)
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

; <label>:201                                     ; preds = %186
  %202 = load i32, i32* %i, align 4, !tbaa !1
  %203 = load i32, i32* %j, align 4, !tbaa !1
  %204 = load i32, i32* %k, align 4, !tbaa !1
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %202, i32 %203, i32 %204)
  br label %206

; <label>:206                                     ; preds = %201, %186
  br label %207

; <label>:207                                     ; preds = %206
  %208 = load i32, i32* %k, align 4, !tbaa !1
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %k, align 4, !tbaa !1
  br label %183

; <label>:210                                     ; preds = %183
  br label %211

; <label>:211                                     ; preds = %210
  %212 = load i32, i32* %j, align 4, !tbaa !1
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %j, align 4, !tbaa !1
  br label %179

; <label>:214                                     ; preds = %179
  br label %215

; <label>:215                                     ; preds = %214
  %216 = load i32, i32* %i, align 4, !tbaa !1
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:218                                     ; preds = %175
  %219 = load i32, i32* @g_143, align 4, !tbaa !1
  %220 = sext i32 %219 to i64
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %221)
  %222 = load i8, i8* @g_165, align 1, !tbaa !9
  %223 = zext i8 %222 to i64
  %224 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %224)
  %225 = load i32, i32* @g_207, align 4, !tbaa !1
  %226 = zext i32 %225 to i64
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %227)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %228

; <label>:228                                     ; preds = %267, %218
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = icmp slt i32 %229, 3
  br i1 %230, label %231, label %270

; <label>:231                                     ; preds = %228
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %232

; <label>:232                                     ; preds = %263, %231
  %233 = load i32, i32* %j, align 4, !tbaa !1
  %234 = icmp slt i32 %233, 3
  br i1 %234, label %235, label %266

; <label>:235                                     ; preds = %232
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %236

; <label>:236                                     ; preds = %259, %235
  %237 = load i32, i32* %k, align 4, !tbaa !1
  %238 = icmp slt i32 %237, 9
  br i1 %238, label %239, label %262

; <label>:239                                     ; preds = %236
  %240 = load i32, i32* %k, align 4, !tbaa !1
  %241 = sext i32 %240 to i64
  %242 = load i32, i32* %j, align 4, !tbaa !1
  %243 = sext i32 %242 to i64
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [3 x [3 x [9 x i64]]], [3 x [3 x [9 x i64]]]* @g_252, i32 0, i64 %245
  %247 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %246, i32 0, i64 %243
  %248 = getelementptr inbounds [9 x i64], [9 x i64]* %247, i32 0, i64 %241
  %249 = load i64, i64* %248, align 8, !tbaa !7
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 %250)
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

; <label>:253                                     ; preds = %239
  %254 = load i32, i32* %i, align 4, !tbaa !1
  %255 = load i32, i32* %j, align 4, !tbaa !1
  %256 = load i32, i32* %k, align 4, !tbaa !1
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %254, i32 %255, i32 %256)
  br label %258

; <label>:258                                     ; preds = %253, %239
  br label %259

; <label>:259                                     ; preds = %258
  %260 = load i32, i32* %k, align 4, !tbaa !1
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %k, align 4, !tbaa !1
  br label %236

; <label>:262                                     ; preds = %236
  br label %263

; <label>:263                                     ; preds = %262
  %264 = load i32, i32* %j, align 4, !tbaa !1
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %j, align 4, !tbaa !1
  br label %232

; <label>:266                                     ; preds = %232
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i32, i32* %i, align 4, !tbaa !1
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %i, align 4, !tbaa !1
  br label %228

; <label>:270                                     ; preds = %228
  %271 = load i64, i64* @g_254, align 8, !tbaa !7
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %272)
  %273 = load i64, i64* @g_260, align 8, !tbaa !7
  %274 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %274)
  %275 = load i32, i32* @g_274, align 4, !tbaa !1
  %276 = zext i32 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %277)
  %278 = load i32, i32* @g_377, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %280)
  %281 = load i16, i16* @g_517, align 2, !tbaa !10
  %282 = zext i16 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %283)
  %284 = load i32, i32* @g_607, align 4, !tbaa !1
  %285 = sext i32 %284 to i64
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %286)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %287

; <label>:287                                     ; preds = %303, %270
  %288 = load i32, i32* %i, align 4, !tbaa !1
  %289 = icmp slt i32 %288, 5
  br i1 %289, label %290, label %306

; <label>:290                                     ; preds = %287
  %291 = load i32, i32* %i, align 4, !tbaa !1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [5 x i16], [5 x i16]* @g_628, i32 0, i64 %292
  %294 = load i16, i16* %293, align 2, !tbaa !10
  %295 = zext i16 %294 to i64
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %295, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %296)
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

; <label>:299                                     ; preds = %290
  %300 = load i32, i32* %i, align 4, !tbaa !1
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %300)
  br label %302

; <label>:302                                     ; preds = %299, %290
  br label %303

; <label>:303                                     ; preds = %302
  %304 = load i32, i32* %i, align 4, !tbaa !1
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %i, align 4, !tbaa !1
  br label %287

; <label>:306                                     ; preds = %287
  %307 = load i64, i64* @g_767, align 8, !tbaa !7
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %308)
  %309 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %309)
  %310 = load i32, i32* @g_882, align 4, !tbaa !1
  %311 = zext i32 %310 to i64
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %312)
  %313 = load i16, i16* @g_884, align 2, !tbaa !10
  %314 = sext i16 %313 to i64
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %315)
  %316 = load i32, i32* @g_973, align 4, !tbaa !1
  %317 = sext i32 %316 to i64
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %318)
  %319 = load i32, i32* @g_999, align 4, !tbaa !1
  %320 = zext i32 %319 to i64
  %321 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %320, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %321)
  %322 = load i32, i32* @g_1120, align 4, !tbaa !1
  %323 = sext i32 %322 to i64
  %324 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %323, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %324)
  %325 = load i8, i8* @g_1135, align 1, !tbaa !9
  %326 = zext i8 %325 to i64
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %326, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %327)
  %328 = load i32, i32* @g_1137, align 4, !tbaa !1
  %329 = zext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %330)
  %331 = load i8, i8* @g_1354, align 1, !tbaa !9
  %332 = sext i8 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %333)
  %334 = load i64, i64* @g_1477, align 8, !tbaa !7
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %335)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %336

; <label>:336                                     ; preds = %352, %306
  %337 = load i32, i32* %i, align 4, !tbaa !1
  %338 = icmp slt i32 %337, 1
  br i1 %338, label %339, label %355

; <label>:339                                     ; preds = %336
  %340 = load i32, i32* %i, align 4, !tbaa !1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1577, i32 0, i64 %341
  %343 = load volatile i32, i32* %342, align 4, !tbaa !1
  %344 = sext i32 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 %345)
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

; <label>:348                                     ; preds = %339
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %349)
  br label %351

; <label>:351                                     ; preds = %348, %339
  br label %352

; <label>:352                                     ; preds = %351
  %353 = load i32, i32* %i, align 4, !tbaa !1
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %i, align 4, !tbaa !1
  br label %336

; <label>:355                                     ; preds = %336
  %356 = load i16, i16* @g_1606, align 2, !tbaa !10
  %357 = sext i16 %356 to i64
  %358 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %358)
  %359 = load i16, i16* @g_1612, align 2, !tbaa !10
  %360 = sext i16 %359 to i64
  %361 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %360, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %361)
  %362 = load volatile i64, i64* @g_1677, align 8, !tbaa !7
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %363)
  %364 = load volatile i64, i64* @g_1883, align 8, !tbaa !7
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %365)
  %366 = load volatile i32, i32* @g_1942, align 4, !tbaa !1
  %367 = zext i32 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %368)
  %369 = load i32, i32* @g_2265, align 4, !tbaa !1
  %370 = sext i32 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %371)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %372

; <label>:372                                     ; preds = %412, %355
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %374 = icmp slt i32 %373, 6
  br i1 %374, label %375, label %415

; <label>:375                                     ; preds = %372
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %376

; <label>:376                                     ; preds = %408, %375
  %377 = load i32, i32* %j, align 4, !tbaa !1
  %378 = icmp slt i32 %377, 1
  br i1 %378, label %379, label %411

; <label>:379                                     ; preds = %376
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %380

; <label>:380                                     ; preds = %404, %379
  %381 = load i32, i32* %k, align 4, !tbaa !1
  %382 = icmp slt i32 %381, 4
  br i1 %382, label %383, label %407

; <label>:383                                     ; preds = %380
  %384 = load i32, i32* %k, align 4, !tbaa !1
  %385 = sext i32 %384 to i64
  %386 = load i32, i32* %j, align 4, !tbaa !1
  %387 = sext i32 %386 to i64
  %388 = load i32, i32* %i, align 4, !tbaa !1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_2316, i32 0, i64 %389
  %391 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %390, i32 0, i64 %387
  %392 = getelementptr inbounds [4 x i32], [4 x i32]* %391, i32 0, i64 %385
  %393 = load i32, i32* %392, align 4, !tbaa !1
  %394 = zext i32 %393 to i64
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %394, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 %395)
  %396 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %403

; <label>:398                                     ; preds = %383
  %399 = load i32, i32* %i, align 4, !tbaa !1
  %400 = load i32, i32* %j, align 4, !tbaa !1
  %401 = load i32, i32* %k, align 4, !tbaa !1
  %402 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %399, i32 %400, i32 %401)
  br label %403

; <label>:403                                     ; preds = %398, %383
  br label %404

; <label>:404                                     ; preds = %403
  %405 = load i32, i32* %k, align 4, !tbaa !1
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %k, align 4, !tbaa !1
  br label %380

; <label>:407                                     ; preds = %380
  br label %408

; <label>:408                                     ; preds = %407
  %409 = load i32, i32* %j, align 4, !tbaa !1
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %j, align 4, !tbaa !1
  br label %376

; <label>:411                                     ; preds = %376
  br label %412

; <label>:412                                     ; preds = %411
  %413 = load i32, i32* %i, align 4, !tbaa !1
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %i, align 4, !tbaa !1
  br label %372

; <label>:415                                     ; preds = %372
  %416 = load i32, i32* @g_2346, align 4, !tbaa !1
  %417 = sext i32 %416 to i64
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %418)
  %419 = load volatile i64, i64* @g_2403, align 8, !tbaa !7
  %420 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %419, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %420)
  %421 = load i8, i8* @g_2558, align 1, !tbaa !9
  %422 = zext i8 %421 to i64
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %422, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %423)
  %424 = load volatile i64, i64* @g_2626, align 8, !tbaa !7
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %424, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %425)
  %426 = load i16, i16* @g_2831, align 2, !tbaa !10
  %427 = zext i16 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %428)
  %429 = load i64, i64* @g_3132, align 8, !tbaa !7
  %430 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %429, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %430)
  %431 = load volatile i32, i32* @g_3133, align 4, !tbaa !1
  %432 = sext i32 %431 to i64
  %433 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %432, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %433)
  %434 = load volatile i16, i16* @g_3250, align 2, !tbaa !10
  %435 = sext i16 %434 to i64
  %436 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %435, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %436)
  %437 = load i16, i16* @g_3349, align 2, !tbaa !10
  %438 = sext i16 %437 to i64
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %438, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %439)
  %440 = load i64, i64* @g_3361, align 8, !tbaa !7
  %441 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %440, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %441)
  %442 = load volatile i32, i32* @g_3520, align 4, !tbaa !1
  %443 = sext i32 %442 to i64
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %443, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %444)
  %445 = load volatile i8, i8* @g_3521, align 1, !tbaa !9
  %446 = sext i8 %445 to i64
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %447)
  %448 = load i64, i64* @g_3522, align 8, !tbaa !7
  %449 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %448, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %449)
  %450 = load i32, i32* @g_3526, align 4, !tbaa !1
  %451 = sext i32 %450 to i64
  %452 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %451, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %452)
  %453 = load i16, i16* @g_3743, align 2, !tbaa !10
  %454 = zext i16 %453 to i64
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %455)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %456

; <label>:456                                     ; preds = %496, %415
  %457 = load i32, i32* %i, align 4, !tbaa !1
  %458 = icmp slt i32 %457, 3
  br i1 %458, label %459, label %499

; <label>:459                                     ; preds = %456
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %460

; <label>:460                                     ; preds = %492, %459
  %461 = load i32, i32* %j, align 4, !tbaa !1
  %462 = icmp slt i32 %461, 6
  br i1 %462, label %463, label %495

; <label>:463                                     ; preds = %460
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %464

; <label>:464                                     ; preds = %488, %463
  %465 = load i32, i32* %k, align 4, !tbaa !1
  %466 = icmp slt i32 %465, 10
  br i1 %466, label %467, label %491

; <label>:467                                     ; preds = %464
  %468 = load i32, i32* %k, align 4, !tbaa !1
  %469 = sext i32 %468 to i64
  %470 = load i32, i32* %j, align 4, !tbaa !1
  %471 = sext i32 %470 to i64
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [3 x [6 x [10 x i16]]], [3 x [6 x [10 x i16]]]* @g_3859, i32 0, i64 %473
  %475 = getelementptr inbounds [6 x [10 x i16]], [6 x [10 x i16]]* %474, i32 0, i64 %471
  %476 = getelementptr inbounds [10 x i16], [10 x i16]* %475, i32 0, i64 %469
  %477 = load i16, i16* %476, align 2, !tbaa !10
  %478 = sext i16 %477 to i64
  %479 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %478, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i32 %479)
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %487

; <label>:482                                     ; preds = %467
  %483 = load i32, i32* %i, align 4, !tbaa !1
  %484 = load i32, i32* %j, align 4, !tbaa !1
  %485 = load i32, i32* %k, align 4, !tbaa !1
  %486 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %483, i32 %484, i32 %485)
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
  %500 = load i16, i16* @g_3863, align 2, !tbaa !10
  %501 = sext i16 %500 to i64
  %502 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %501, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %502)
  %503 = load i16, i16* @g_3920, align 2, !tbaa !10
  %504 = zext i16 %503 to i64
  %505 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %504, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %505)
  %506 = load volatile i32, i32* @g_4048, align 4, !tbaa !1
  %507 = zext i32 %506 to i64
  %508 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %507, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %508)
  %509 = load volatile i16, i16* @g_4375, align 2, !tbaa !10
  %510 = zext i16 %509 to i64
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %511)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %512

; <label>:512                                     ; preds = %552, %499
  %513 = load i32, i32* %i, align 4, !tbaa !1
  %514 = icmp slt i32 %513, 9
  br i1 %514, label %515, label %555

; <label>:515                                     ; preds = %512
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %516

; <label>:516                                     ; preds = %548, %515
  %517 = load i32, i32* %j, align 4, !tbaa !1
  %518 = icmp slt i32 %517, 6
  br i1 %518, label %519, label %551

; <label>:519                                     ; preds = %516
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %520

; <label>:520                                     ; preds = %544, %519
  %521 = load i32, i32* %k, align 4, !tbaa !1
  %522 = icmp slt i32 %521, 4
  br i1 %522, label %523, label %547

; <label>:523                                     ; preds = %520
  %524 = load i32, i32* %k, align 4, !tbaa !1
  %525 = sext i32 %524 to i64
  %526 = load i32, i32* %j, align 4, !tbaa !1
  %527 = sext i32 %526 to i64
  %528 = load i32, i32* %i, align 4, !tbaa !1
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [9 x [6 x [4 x i16]]], [9 x [6 x [4 x i16]]]* @g_4402, i32 0, i64 %529
  %531 = getelementptr inbounds [6 x [4 x i16]], [6 x [4 x i16]]* %530, i32 0, i64 %527
  %532 = getelementptr inbounds [4 x i16], [4 x i16]* %531, i32 0, i64 %525
  %533 = load i16, i16* %532, align 2, !tbaa !10
  %534 = sext i16 %533 to i64
  %535 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %534, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), i32 %535)
  %536 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %543

; <label>:538                                     ; preds = %523
  %539 = load i32, i32* %i, align 4, !tbaa !1
  %540 = load i32, i32* %j, align 4, !tbaa !1
  %541 = load i32, i32* %k, align 4, !tbaa !1
  %542 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %539, i32 %540, i32 %541)
  br label %543

; <label>:543                                     ; preds = %538, %523
  br label %544

; <label>:544                                     ; preds = %543
  %545 = load i32, i32* %k, align 4, !tbaa !1
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %k, align 4, !tbaa !1
  br label %520

; <label>:547                                     ; preds = %520
  br label %548

; <label>:548                                     ; preds = %547
  %549 = load i32, i32* %j, align 4, !tbaa !1
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %j, align 4, !tbaa !1
  br label %516

; <label>:551                                     ; preds = %516
  br label %552

; <label>:552                                     ; preds = %551
  %553 = load i32, i32* %i, align 4, !tbaa !1
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %i, align 4, !tbaa !1
  br label %512

; <label>:555                                     ; preds = %512
  %556 = load volatile i16, i16* @g_4556, align 2, !tbaa !10
  %557 = sext i16 %556 to i64
  %558 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %557, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %558)
  %559 = load volatile i32, i32* @g_4722, align 4, !tbaa !1
  %560 = zext i32 %559 to i64
  %561 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %560, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %561)
  %562 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %563 = zext i32 %562 to i64
  %564 = xor i64 %563, 4294967295
  %565 = trunc i64 %564 to i32
  %566 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %565, i32 %566)
  %567 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %567) #1
  %568 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %568) #1
  %569 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %569) #1
  %570 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %570) #1
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
define internal signext i8 @func_1() #0 {
  %l_10 = alloca i8, align 1
  %l_11 = alloca i16*, align 8
  %l_12 = alloca i16*, align 8
  %l_38 = alloca [1 x [2 x [5 x i32]]], align 16
  %l_3565 = alloca i16*, align 8
  %l_4292 = alloca i32*, align 8
  %l_4322 = alloca i16, align 2
  %l_4343 = alloca i8**, align 8
  %l_4346 = alloca i32, align 4
  %l_4377 = alloca i64*, align 8
  %l_4379 = alloca i64*, align 8
  %l_4410 = alloca i32*, align 8
  %l_4431 = alloca [1 x i64], align 8
  %l_4549 = alloca [7 x [9 x [1 x i8]]], align 16
  %l_4631 = alloca i8*****, align 8
  %l_4641 = alloca i16****, align 8
  %l_4640 = alloca [4 x [4 x [1 x i16*****]]], align 16
  %l_4647 = alloca [8 x i64], align 16
  %l_4704 = alloca i32**, align 8
  %l_4725 = alloca i8, align 1
  %l_4738 = alloca [9 x i8*****], align 16
  %l_4739 = alloca i32, align 4
  %l_4755 = alloca [7 x i8], align 1
  %l_4765 = alloca [5 x [9 x [5 x i64]]], align 16
  %l_4773 = alloca i32, align 4
  %l_4775 = alloca i32, align 4
  %l_4776 = alloca i16, align 2
  %l_4778 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start(i64 1, i8* %l_10) #1
  store i8 -48, i8* %l_10, align 1, !tbaa !9
  %1 = bitcast i16** %l_11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i16* null, i16** %l_11, align 8, !tbaa !5
  %2 = bitcast i16** %l_12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i16* @g_13, i16** %l_12, align 8, !tbaa !5
  %3 = bitcast [1 x [2 x [5 x i32]]]* %l_38 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #1
  %4 = bitcast [1 x [2 x [5 x i32]]]* %l_38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([1 x [2 x [5 x i32]]]* @func_1.l_38 to i8*), i64 40, i32 16, i1 false)
  %5 = bitcast i16** %l_3565 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16* @g_1606, i16** %l_3565, align 8, !tbaa !5
  %6 = bitcast i32** %l_4292 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_8, i32 0, i64 0), i32** %l_4292, align 8, !tbaa !5
  %7 = bitcast i16* %l_4322 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  store i16 1, i16* %l_4322, align 2, !tbaa !10
  %8 = bitcast i8*** %l_4343 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8** @g_3184, i8*** %l_4343, align 8, !tbaa !5
  %9 = bitcast i32* %l_4346 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 7, i32* %l_4346, align 4, !tbaa !1
  %10 = bitcast i64** %l_4377 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64* @g_254, i64** %l_4377, align 8, !tbaa !5
  %11 = bitcast i64** %l_4379 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64* null, i64** %l_4379, align 8, !tbaa !5
  %12 = bitcast i32** %l_4410 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* null, i32** %l_4410, align 8, !tbaa !5
  %13 = bitcast [1 x i64]* %l_4431 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast [7 x [9 x [1 x i8]]]* %l_4549 to i8*
  call void @llvm.lifetime.start(i64 63, i8* %14) #1
  %15 = bitcast [7 x [9 x [1 x i8]]]* %l_4549 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* getelementptr inbounds ([7 x [9 x [1 x i8]]], [7 x [9 x [1 x i8]]]* @func_1.l_4549, i32 0, i32 0, i32 0, i32 0), i64 63, i32 16, i1 false)
  %16 = bitcast i8****** %l_4631 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i8***** null, i8****** %l_4631, align 8, !tbaa !5
  %17 = bitcast i16***** %l_4641 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i16**** @g_1705, i16***** %l_4641, align 8, !tbaa !5
  %18 = bitcast [4 x [4 x [1 x i16*****]]]* %l_4640 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %18) #1
  %19 = bitcast [8 x i64]* %l_4647 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %19) #1
  %20 = bitcast i32*** %l_4704 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32** null, i32*** %l_4704, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_4725) #1
  store i8 -10, i8* %l_4725, align 1, !tbaa !9
  %21 = bitcast [9 x i8*****]* %l_4738 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %21) #1
  %22 = bitcast i32* %l_4739 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 -1, i32* %l_4739, align 4, !tbaa !1
  %23 = bitcast [7 x i8]* %l_4755 to i8*
  call void @llvm.lifetime.start(i64 7, i8* %23) #1
  %24 = bitcast [5 x [9 x [5 x i64]]]* %l_4765 to i8*
  call void @llvm.lifetime.start(i64 1800, i8* %24) #1
  %25 = bitcast [5 x [9 x [5 x i64]]]* %l_4765 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast ([5 x [9 x [5 x i64]]]* @func_1.l_4765 to i8*), i64 1800, i32 16, i1 false)
  %26 = bitcast i32* %l_4773 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 582396657, i32* %l_4773, align 4, !tbaa !1
  %27 = bitcast i32* %l_4775 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %l_4775, align 4, !tbaa !1
  %28 = bitcast i16* %l_4776 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %28) #1
  store i16 -5, i16* %l_4776, align 2, !tbaa !10
  %29 = bitcast i32** %l_4778 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i32* @g_95, i32** %l_4778, align 8, !tbaa !5
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %40, %0
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %33
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [1 x i64], [1 x i64]* %l_4431, i32 0, i64 %38
  store i64 -1, i64* %39, align 8, !tbaa !7
  br label %40

; <label>:40                                      ; preds = %36
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %i, align 4, !tbaa !1
  br label %33

; <label>:43                                      ; preds = %33
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %44

; <label>:44                                      ; preds = %73, %43
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %76

; <label>:47                                      ; preds = %44
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %48

; <label>:48                                      ; preds = %69, %47
  %49 = load i32, i32* %j, align 4, !tbaa !1
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %72

; <label>:51                                      ; preds = %48
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %52

; <label>:52                                      ; preds = %65, %51
  %53 = load i32, i32* %k, align 4, !tbaa !1
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %68

; <label>:55                                      ; preds = %52
  %56 = load i32, i32* %k, align 4, !tbaa !1
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* %j, align 4, !tbaa !1
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %i, align 4, !tbaa !1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x [4 x [1 x i16*****]]], [4 x [4 x [1 x i16*****]]]* %l_4640, i32 0, i64 %61
  %63 = getelementptr inbounds [4 x [1 x i16*****]], [4 x [1 x i16*****]]* %62, i32 0, i64 %59
  %64 = getelementptr inbounds [1 x i16*****], [1 x i16*****]* %63, i32 0, i64 %57
  store i16***** %l_4641, i16****** %64, align 8, !tbaa !5
  br label %65

; <label>:65                                      ; preds = %55
  %66 = load i32, i32* %k, align 4, !tbaa !1
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %k, align 4, !tbaa !1
  br label %52

; <label>:68                                      ; preds = %52
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load i32, i32* %j, align 4, !tbaa !1
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %j, align 4, !tbaa !1
  br label %48

; <label>:72                                      ; preds = %48
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i32, i32* %i, align 4, !tbaa !1
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %i, align 4, !tbaa !1
  br label %44

; <label>:76                                      ; preds = %44
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %77

; <label>:77                                      ; preds = %84, %76
  %78 = load i32, i32* %i, align 4, !tbaa !1
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %80, label %87

; <label>:80                                      ; preds = %77
  %81 = load i32, i32* %i, align 4, !tbaa !1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i64], [8 x i64]* %l_4647, i32 0, i64 %82
  store i64 8612089237058439778, i64* %83, align 8, !tbaa !7
  br label %84

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* %i, align 4, !tbaa !1
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %i, align 4, !tbaa !1
  br label %77

; <label>:87                                      ; preds = %77
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %88

; <label>:88                                      ; preds = %95, %87
  %89 = load i32, i32* %i, align 4, !tbaa !1
  %90 = icmp slt i32 %89, 9
  br i1 %90, label %91, label %98

; <label>:91                                      ; preds = %88
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [9 x i8*****], [9 x i8*****]* %l_4738, i32 0, i64 %93
  store i8***** getelementptr inbounds ([7 x [10 x i8****]], [7 x [10 x i8****]]* @g_2189, i32 0, i64 6, i64 6), i8****** %94, align 8, !tbaa !5
  br label %95

; <label>:95                                      ; preds = %91
  %96 = load i32, i32* %i, align 4, !tbaa !1
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %i, align 4, !tbaa !1
  br label %88

; <label>:98                                      ; preds = %88
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %99

; <label>:99                                      ; preds = %106, %98
  %100 = load i32, i32* %i, align 4, !tbaa !1
  %101 = icmp slt i32 %100, 7
  br i1 %101, label %102, label %109

; <label>:102                                     ; preds = %99
  %103 = load i32, i32* %i, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [7 x i8], [7 x i8]* %l_4755, i32 0, i64 %104
  store i8 -50, i8* %105, align 1, !tbaa !9
  br label %106

; <label>:106                                     ; preds = %102
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %i, align 4, !tbaa !1
  br label %99

; <label>:109                                     ; preds = %99
  %110 = load i8*, i8** @g_3184, align 8, !tbaa !5
  %111 = load i8, i8* %110, align 1, !tbaa !9
  %112 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32** %l_4778 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i16* %l_4776 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %116) #1
  %117 = bitcast i32* %l_4775 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %l_4773 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast [5 x [9 x [5 x i64]]]* %l_4765 to i8*
  call void @llvm.lifetime.end(i64 1800, i8* %119) #1
  %120 = bitcast [7 x i8]* %l_4755 to i8*
  call void @llvm.lifetime.end(i64 7, i8* %120) #1
  %121 = bitcast i32* %l_4739 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast [9 x i8*****]* %l_4738 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %122) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_4725) #1
  %123 = bitcast i32*** %l_4704 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast [8 x i64]* %l_4647 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %124) #1
  %125 = bitcast [4 x [4 x [1 x i16*****]]]* %l_4640 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %125) #1
  %126 = bitcast i16***** %l_4641 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i8****** %l_4631 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast [7 x [9 x [1 x i8]]]* %l_4549 to i8*
  call void @llvm.lifetime.end(i64 63, i8* %128) #1
  %129 = bitcast [1 x i64]* %l_4431 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i32** %l_4410 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast i64** %l_4379 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i64** %l_4377 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32* %l_4346 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i8*** %l_4343 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i16* %l_4322 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %135) #1
  %136 = bitcast i32** %l_4292 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i16** %l_3565 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast [1 x [2 x [5 x i32]]]* %l_38 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %138) #1
  %139 = bitcast i16** %l_12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i16** %l_11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_10) #1
  ret i8 %111
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i32 %3)
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
