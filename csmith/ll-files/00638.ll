; ModuleID = '00638.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global i8 2, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_25 = internal global i32 320926422, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_25\00", align 1
@g_33 = internal global i8 -102, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"g_33\00", align 1
@g_79 = internal global i16 329, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_79\00", align 1
@g_96 = internal global i32 -2061471383, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_96\00", align 1
@g_108 = internal global i8 -1, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"g_108\00", align 1
@g_133 = internal global [7 x i32] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"g_133[i]\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_200 = internal global [10 x i8] c"\C1\02\02\C1\EF\C1\02\02\C1\EF", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"g_200[i]\00", align 1
@g_208 = internal global i32 -826631872, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"g_208\00", align 1
@g_241 = internal global i8 -127, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"g_241\00", align 1
@g_247 = internal global i64 1, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"g_247\00", align 1
@g_250 = internal global i16 4, align 2
@.str.13 = private unnamed_addr constant [6 x i8] c"g_250\00", align 1
@g_251 = internal global i8 -1, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_251\00", align 1
@g_281 = internal global i32 -1, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_281\00", align 1
@g_321 = internal global i32 380085679, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_321\00", align 1
@g_363 = internal global i64 -6494850108437781635, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_363\00", align 1
@g_479 = internal global i64 1, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_479\00", align 1
@g_513 = internal global i16 0, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_513\00", align 1
@g_516 = internal global i64 1, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_516\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_518\00", align 1
@g_561 = internal global i32 -1264102675, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_561\00", align 1
@g_596 = internal global i64 1, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_596\00", align 1
@g_627 = internal global i32 908510375, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_627\00", align 1
@g_638 = internal global i32 -1, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_638\00", align 1
@g_687 = internal global i32 -413705853, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_687\00", align 1
@g_691 = internal global i32 1342861593, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_691\00", align 1
@g_833 = internal global [10 x [8 x [3 x i32]]] [[8 x [3 x i32]] [[3 x i32] [i32 -6, i32 -8, i32 756505335], [3 x i32] [i32 1209148518, i32 -1, i32 -1743509298], [3 x i32] [i32 -75380679, i32 756505335, i32 -478098930], [3 x i32] [i32 1209148518, i32 -1485281415, i32 241408860], [3 x i32] [i32 -6, i32 1, i32 1], [3 x i32] [i32 -5, i32 -1743509298, i32 1], [3 x i32] [i32 9, i32 -75380679, i32 241408860], [3 x i32] [i32 0, i32 9, i32 -478098930]], [8 x [3 x i32]] [[3 x i32] [i32 1, i32 4, i32 -1743509298], [3 x i32] [i32 -1261613192, i32 9, i32 756505335], [3 x i32] [i32 -1, i32 -75380679, i32 -6], [3 x i32] [i32 -1743509298, i32 -1743509298, i32 9], [3 x i32] [i32 -1743509298, i32 1, i32 -1261613192], [3 x i32] [i32 -1, i32 -1485281415, i32 0], [3 x i32] [i32 -1261613192, i32 756505335, i32 -1], [3 x i32] [i32 1, i32 -1, i32 0]], [8 x [3 x i32]] [[3 x i32] [i32 0, i32 -8, i32 -1261613192], [3 x i32] [i32 9, i32 1209148518, i32 9], [3 x i32] [i32 -5, i32 1209148518, i32 -6], [3 x i32] [i32 -6, i32 -8, i32 756505335], [3 x i32] [i32 1209148518, i32 -1, i32 -1743509298], [3 x i32] [i32 -75380679, i32 756505335, i32 -478098930], [3 x i32] [i32 1209148518, i32 -1485281415, i32 241408860], [3 x i32] [i32 -6, i32 1, i32 1]], [8 x [3 x i32]] [[3 x i32] [i32 -5, i32 -1743509298, i32 1], [3 x i32] [i32 9, i32 -75380679, i32 241408860], [3 x i32] [i32 0, i32 9, i32 -478098930], [3 x i32] [i32 1, i32 4, i32 -1743509298], [3 x i32] [i32 -1261613192, i32 9, i32 756505335], [3 x i32] [i32 -1, i32 -75380679, i32 -6], [3 x i32] [i32 -1743509298, i32 -1743509298, i32 9], [3 x i32] [i32 -1743509298, i32 1, i32 -1261613192]], [8 x [3 x i32]] [[3 x i32] [i32 -1, i32 -1485281415, i32 0], [3 x i32] [i32 -1261613192, i32 756505335, i32 -1], [3 x i32] [i32 1, i32 -1, i32 0], [3 x i32] [i32 0, i32 -8, i32 -1261613192], [3 x i32] [i32 9, i32 1209148518, i32 9], [3 x i32] [i32 -5, i32 1209148518, i32 -6], [3 x i32] [i32 -6, i32 -8, i32 756505335], [3 x i32] [i32 1209148518, i32 -1, i32 -1743509298]], [8 x [3 x i32]] [[3 x i32] [i32 -75380679, i32 756505335, i32 -478098930], [3 x i32] [i32 1209148518, i32 -1485281415, i32 241408860], [3 x i32] [i32 -6, i32 1, i32 1], [3 x i32] [i32 -5, i32 -1743509298, i32 1], [3 x i32] [i32 9, i32 -75380679, i32 241408860], [3 x i32] [i32 0, i32 9, i32 -478098930], [3 x i32] [i32 1, i32 4, i32 -1743509298], [3 x i32] [i32 -1261613192, i32 9, i32 756505335]], [8 x [3 x i32]] [[3 x i32] [i32 -1, i32 -75380679, i32 -6], [3 x i32] [i32 -1743509298, i32 -1743509298, i32 9], [3 x i32] [i32 -1743509298, i32 1, i32 -1261613192], [3 x i32] [i32 -1, i32 -1485281415, i32 0], [3 x i32] [i32 -1261613192, i32 756505335, i32 -1], [3 x i32] [i32 1, i32 -1, i32 0], [3 x i32] [i32 0, i32 -8, i32 -1261613192], [3 x i32] [i32 9, i32 1209148518, i32 9]], [8 x [3 x i32]] [[3 x i32] [i32 -5, i32 1209148518, i32 -6], [3 x i32] [i32 -6, i32 -8, i32 756505335], [3 x i32] [i32 1209148518, i32 -1, i32 -1743509298], [3 x i32] [i32 -75380679, i32 756505335, i32 -478098930], [3 x i32] [i32 756505335, i32 241408860, i32 -1], [3 x i32] [i32 9, i32 -1743509298, i32 -1743509298], [3 x i32] [i32 -1485281415, i32 1, i32 -1743509298], [3 x i32] [i32 -5, i32 1, i32 -1]], [8 x [3 x i32]] [[3 x i32] [i32 -478098930, i32 -5, i32 -1261613192], [3 x i32] [i32 2113762546, i32 0, i32 1], [3 x i32] [i32 -6, i32 -5, i32 0], [3 x i32] [i32 -75380679, i32 1, i32 9], [3 x i32] [i32 1, i32 1, i32 -5], [3 x i32] [i32 1, i32 -1743509298, i32 -6], [3 x i32] [i32 -75380679, i32 241408860, i32 1209148518], [3 x i32] [i32 -6, i32 0, i32 -75380679]], [8 x [3 x i32]] [[3 x i32] [i32 2113762546, i32 -75380679, i32 1209148518], [3 x i32] [i32 -478098930, i32 4, i32 -6], [3 x i32] [i32 -5, i32 756505335, i32 -5], [3 x i32] [i32 -1485281415, i32 756505335, i32 9], [3 x i32] [i32 9, i32 4, i32 0], [3 x i32] [i32 756505335, i32 -75380679, i32 1], [3 x i32] [i32 1, i32 0, i32 -1261613192], [3 x i32] [i32 756505335, i32 241408860, i32 -1]]], align 16
@.str.28 = private unnamed_addr constant [15 x i8] c"g_833[i][j][k]\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_888 = internal global i32 -1, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_888\00", align 1
@g_900 = internal global i16 -4288, align 2
@.str.31 = private unnamed_addr constant [6 x i8] c"g_900\00", align 1
@g_984 = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_984\00", align 1
@g_1014 = internal global i16 4419, align 2
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1014\00", align 1
@g_1019 = internal global i64 2573970445478151527, align 8
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1019\00", align 1
@g_1021 = internal global i8 -1, align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1021\00", align 1
@g_1105 = internal global i64 0, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1105\00", align 1
@g_1293 = internal global i32 -4, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1293\00", align 1
@g_1374 = internal global i64 -10, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1374\00", align 1
@g_1471 = internal global i64 5370217108709085361, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1471\00", align 1
@g_1514 = internal global i16 -20809, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1514\00", align 1
@g_1537 = internal global i16 -4, align 2
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1537\00", align 1
@g_1740 = internal global i16 4058, align 2
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1740\00", align 1
@g_1766 = internal global i32 -1312239748, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1766\00", align 1
@g_1769 = internal global i32 -1477680401, align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1769\00", align 1
@g_1889 = internal global [2 x [4 x i16]] [[4 x i16] [i16 3, i16 3, i16 3, i16 3], [4 x i16] [i16 3, i16 3, i16 3, i16 3]], align 16
@.str.45 = private unnamed_addr constant [13 x i8] c"g_1889[i][j]\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_2041 = internal global [2 x i32] [i32 1, i32 1], align 4
@.str.47 = private unnamed_addr constant [10 x i8] c"g_2041[i]\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"g_2121\00", align 1
@g_2293 = internal global i32 452022678, align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"g_2293\00", align 1
@g_2392 = internal global [4 x i32] [i32 487252851, i32 487252851, i32 487252851, i32 487252851], align 16
@.str.50 = private unnamed_addr constant [10 x i8] c"g_2392[i]\00", align 1
@g_2397 = internal global [6 x i32] [i32 -1740897807, i32 -1740897807, i32 -1740897807, i32 -1740897807, i32 -1740897807, i32 -1740897807], align 16
@.str.51 = private unnamed_addr constant [10 x i8] c"g_2397[i]\00", align 1
@g_2506 = internal global i8 -1, align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"g_2506\00", align 1
@g_2635 = internal global [5 x [6 x [8 x i16]]] [[6 x [8 x i16]] [[8 x i16] [i16 30957, i16 -1908, i16 30957, i16 3, i16 -32359, i16 -10582, i16 4992, i16 1], [8 x i16] [i16 1, i16 31795, i16 1, i16 -27633, i16 -10188, i16 -19034, i16 -32359, i16 28906], [8 x i16] [i16 1, i16 30957, i16 -10, i16 1, i16 -32359, i16 -12500, i16 -4, i16 1], [8 x i16] [i16 30957, i16 -1, i16 -1908, i16 1543, i16 -1, i16 -1, i16 -7, i16 -4], [8 x i16] [i16 3, i16 -27633, i16 -31218, i16 -12500, i16 -9, i16 -6, i16 1, i16 7], [8 x i16] [i16 1543, i16 -22036, i16 -32359, i16 8159, i16 -29389, i16 -31218, i16 -31218, i16 -29389]], [6 x [8 x i16]] [[8 x i16] [i16 -1, i16 1, i16 1, i16 -1, i16 31795, i16 -29389, i16 -1, i16 -22036], [8 x i16] [i16 2, i16 1, i16 -3, i16 -7, i16 1, i16 -10582, i16 -12500, i16 30957], [8 x i16] [i16 -1, i16 1, i16 1, i16 9357, i16 -10188, i16 -29389, i16 -1, i16 -1908], [8 x i16] [i16 -7505, i16 1, i16 -14141, i16 1, i16 -10582, i16 -31218, i16 -3, i16 -7505], [8 x i16] [i16 1, i16 -22036, i16 -1908, i16 -1, i16 1, i16 -6, i16 30957, i16 22262], [8 x i16] [i16 -1, i16 -27633, i16 3, i16 -31218, i16 -19034, i16 -1, i16 1, i16 -1]], [6 x [8 x i16]] [[8 x i16] [i16 1543, i16 -1, i16 -1, i16 -1, i16 1543, i16 -12500, i16 -7, i16 -29389], [8 x i16] [i16 7, i16 30957, i16 -4, i16 -22036, i16 28906, i16 -19034, i16 -1, i16 -1], [8 x i16] [i16 -3, i16 31795, i16 -4, i16 4992, i16 -23654, i16 -10582, i16 -7, i16 2], [8 x i16] [i16 28906, i16 -1908, i16 -1, i16 -29389, i16 -10188, i16 9357, i16 1, i16 1], [8 x i16] [i16 31795, i16 -7, i16 3, i16 1, i16 -1, i16 -14141, i16 30957, i16 31795], [8 x i16] [i16 -7, i16 -6, i16 -1908, i16 -19034, i16 1, i16 3, i16 -3, i16 -1]], [6 x [8 x i16]] [[8 x i16] [i16 -7, i16 -10, i16 -10582, i16 -10582, i16 -10, i16 -7, i16 28906, i16 1], [8 x i16] [i16 -12500, i16 1, i16 31795, i16 30957, i16 -14141, i16 -1, i16 1, i16 3], [8 x i16] [i16 -4, i16 -9, i16 -1, i16 30957, i16 -12920, i16 -7, i16 2, i16 1], [8 x i16] [i16 -29389, i16 -12920, i16 -19034, i16 -10582, i16 31795, i16 1, i16 1, i16 -1], [8 x i16] [i16 5114, i16 1, i16 -7505, i16 -31218, i16 3, i16 -10, i16 -1, i16 -10], [8 x i16] [i16 -10188, i16 -27633, i16 1, i16 31795, i16 1, i16 1, i16 1543, i16 -10188]], [6 x [8 x i16]] [[8 x i16] [i16 -27633, i16 -4, i16 5114, i16 3, i16 5114, i16 -4, i16 -27633, i16 -9], [8 x i16] [i16 2, i16 -10, i16 -1, i16 1, i16 -7, i16 30957, i16 -7505, i16 -3], [8 x i16] [i16 -12500, i16 22262, i16 -1, i16 -7, i16 -7, i16 -32359, i16 1, i16 3], [8 x i16] [i16 2, i16 -1, i16 9357, i16 -3, i16 5114, i16 -12500, i16 2, i16 22262], [8 x i16] [i16 -27633, i16 3, i16 -9, i16 1, i16 1, i16 1, i16 -32359, i16 -29389], [8 x i16] [i16 -10188, i16 2, i16 -1908, i16 -7, i16 3, i16 4992, i16 1, i16 -12920]]], align 16
@.str.53 = private unnamed_addr constant [16 x i8] c"g_2635[i][j][k]\00", align 1
@g_2717 = internal global i64 -1425037478490279196, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"g_2717\00", align 1
@g_2821 = internal global i32 -1727889763, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"g_2821\00", align 1
@g_2822 = internal global i16 -18451, align 2
@.str.56 = private unnamed_addr constant [7 x i8] c"g_2822\00", align 1
@g_2833 = internal global [5 x [5 x [6 x i32]]] [[5 x [6 x i32]] [[6 x i32] [i32 1721767438, i32 -1067059405, i32 0, i32 1601859877, i32 732022688, i32 732022688], [6 x i32] [i32 732022688, i32 1866269843, i32 1866269843, i32 732022688, i32 1628655036, i32 -1], [6 x i32] [i32 -1, i32 1721767438, i32 1851598826, i32 499893500, i32 0, i32 4], [6 x i32] [i32 1, i32 1601859877, i32 464950870, i32 0, i32 0, i32 4], [6 x i32] [i32 1628655036, i32 1721767438, i32 732022688, i32 1721767438, i32 1628655036, i32 0]], [5 x [6 x i32]] [[6 x i32] [i32 464950870, i32 1866269843, i32 -1426258340, i32 -1, i32 732022688, i32 1], [6 x i32] [i32 -1426258340, i32 -1067059405, i32 1628655036, i32 1866269843, i32 -1504963658, i32 1], [6 x i32] [i32 0, i32 4, i32 -1426258340, i32 -1426258340, i32 4, i32 0], [6 x i32] [i32 -1504963658, i32 499893500, i32 732022688, i32 0, i32 464950870, i32 4], [6 x i32] [i32 499893500, i32 1628655036, i32 464950870, i32 1851598826, i32 1601859877, i32 4]], [5 x [6 x i32]] [[6 x i32] [i32 499893500, i32 -1, i32 1851598826, i32 0, i32 1851598826, i32 -1], [6 x i32] [i32 -1504963658, i32 464950870, i32 1866269843, i32 -1426258340, i32 -1, i32 732022688], [6 x i32] [i32 0, i32 -1, i32 0, i32 1866269843, i32 1, i32 1851598826], [6 x i32] [i32 -1426258340, i32 -1, i32 -1067059405, i32 -1, i32 -1, i32 -1067059405], [6 x i32] [i32 464950870, i32 464950870, i32 -1, i32 1721767438, i32 1851598826, i32 499893500]], [5 x [6 x i32]] [[6 x i32] [i32 1628655036, i32 -1, i32 4, i32 0, i32 1601859877, i32 -1], [6 x i32] [i32 1, i32 1628655036, i32 4, i32 499893500, i32 464950870, i32 499893500], [6 x i32] [i32 -1, i32 499893500, i32 -1, i32 732022688, i32 4, i32 -1067059405], [6 x i32] [i32 732022688, i32 4, i32 -1067059405, i32 1601859877, i32 -1504963658, i32 1851598826], [6 x i32] [i32 1721767438, i32 -1067059405, i32 0, i32 1601859877, i32 732022688, i32 732022688]], [5 x [6 x i32]] [[6 x i32] [i32 732022688, i32 1866269843, i32 1866269843, i32 732022688, i32 1628655036, i32 -1], [6 x i32] [i32 -1, i32 1721767438, i32 1851598826, i32 499893500, i32 0, i32 4], [6 x i32] [i32 1, i32 1601859877, i32 464950870, i32 0, i32 0, i32 4], [6 x i32] [i32 1628655036, i32 1721767438, i32 -1, i32 1866269843, i32 1721767438, i32 0], [6 x i32] [i32 1, i32 464950870, i32 732022688, i32 1851598826, i32 -1, i32 -2070431802]]], align 16
@.str.57 = private unnamed_addr constant [16 x i8] c"g_2833[i][j][k]\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"g_2937\00", align 1
@g_2939 = internal constant [5 x [4 x i16]] [[4 x i16] [i16 16377, i16 -28079, i16 16377, i16 -23062], [4 x i16] [i16 16377, i16 -23062, i16 -23062, i16 16377], [4 x i16] [i16 9, i16 -23062, i16 9, i16 -23062], [4 x i16] [i16 -23062, i16 -28079, i16 9, i16 9], [4 x i16] [i16 9, i16 9, i16 -23062, i16 9]], align 16
@.str.59 = private unnamed_addr constant [13 x i8] c"g_2939[i][j]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2515 = internal constant [4 x i16*] [i16* @g_1014, i16* @g_1014, i16* @g_1014, i16* @g_1014], align 16
@g_2589 = internal global i64** null, align 8
@g_1544 = internal global i32* @g_984, align 8
@func_1.l_3021 = private unnamed_addr constant [5 x i32] [i32 -7, i32 -7, i32 -7, i32 -7, i32 -7], align 16
@g_1535 = internal global i16** @g_1536, align 8
@g_612 = internal constant i8* @g_4, align 8
@g_255 = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_200, i32 0, i64 4), align 8
@g_289 = internal global i32** @g_290, align 8
@g_1414 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_133 to i8*), i64 24) to i32*), align 8
@g_393 = internal global i32** @g_290, align 8
@g_477 = internal global i64* @g_247, align 8
@func_1.l_2848 = private unnamed_addr constant [6 x i16] [i16 -14072, i16 1, i16 -14072, i16 -14072, i16 1, i16 -14072], align 2
@g_48 = internal global i32* null, align 8
@func_1.l_3014 = private unnamed_addr constant [7 x i8*] [i8* @g_1021, i8* null, i8* null, i8* @g_1021, i8* null, i8* null, i8* @g_1021], align 16
@func_1.l_3032 = private unnamed_addr constant [6 x [4 x i8]] [[4 x i8] c"YYYY", [4 x i8] c"YYYY", [4 x i8] c"YYYY", [4 x i8] c"YYYY", [4 x i8] c"YYYY", [4 x i8] c"YYYY"], align 16
@g_2407 = internal global i8* @g_33, align 8
@func_1.l_2665 = private unnamed_addr constant [9 x [3 x [8 x i32]]] [[3 x [8 x i32]] [[8 x i32] [i32 -10, i32 -2046826643, i32 2065647748, i32 1370415146, i32 0, i32 2, i32 2, i32 0], [8 x i32] [i32 -1, i32 0, i32 0, i32 -1, i32 -10, i32 -1, i32 2, i32 -1], [8 x i32] [i32 -2046826643, i32 -1, i32 2065647748, i32 2, i32 2065647748, i32 -1, i32 -2046826643, i32 1]], [3 x [8 x i32]] [[8 x i32] [i32 2065647748, i32 -1, i32 -2046826643, i32 1, i32 -1, i32 -1, i32 1, i32 -2046826643], [8 x i32] [i32 0, i32 0, i32 -1, i32 -10, i32 -1, i32 2, i32 -1, i32 2], [8 x i32] [i32 2065647748, i32 -2046826643, i32 -10, i32 -2046826643, i32 2065647748, i32 1370415146, i32 0, i32 2]], [3 x [8 x i32]] [[8 x i32] [i32 -1, i32 2065647748, i32 -10, i32 1370415146, i32 1370415146, i32 -10, i32 2065647748, i32 -1], [8 x i32] [i32 0, i32 -1, i32 -10, i32 -1, i32 2, i32 -1, i32 2, i32 -1], [8 x i32] [i32 1370415146, i32 1, i32 1370415146, i32 -2046826643, i32 -1, i32 -1, i32 -10, i32 -10]], [3 x [8 x i32]] [[8 x i32] [i32 -10, i32 -1, i32 0, i32 0, i32 -1, i32 -10, i32 -1, i32 2], [8 x i32] [i32 -10, i32 2065647748, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2065647748], [8 x i32] [i32 1370415146, i32 -1, i32 -1, i32 -1, i32 2, i32 -2046826643, i32 -2046826643, i32 2]], [3 x [8 x i32]] [[8 x i32] [i32 0, i32 2, i32 2, i32 0, i32 1370415146, i32 2065647748, i32 -2046826643, i32 -10], [8 x i32] [i32 -1, i32 0, i32 -1, i32 -2046826643, i32 -1, i32 0, i32 -1, i32 -1], [8 x i32] [i32 -1, i32 0, i32 -1, i32 -1, i32 2065647748, i32 2065647748, i32 -1, i32 -1]], [3 x [8 x i32]] [[8 x i32] [i32 2, i32 2, i32 0, i32 1370415146, i32 2065647748, i32 -2046826643, i32 -10, i32 -2046826643], [8 x i32] [i32 -1, i32 -1, i32 1370415146, i32 -1, i32 -1, i32 -1, i32 2, i32 -2046826643], [8 x i32] [i32 -1, i32 2065647748, i32 -10, i32 1370415146, i32 1370415146, i32 -10, i32 2065647748, i32 -1]], [3 x [8 x i32]] [[8 x i32] [i32 0, i32 -1, i32 -10, i32 -1, i32 2, i32 -1, i32 2, i32 -1], [8 x i32] [i32 1370415146, i32 1, i32 1370415146, i32 -2046826643, i32 -1, i32 -1, i32 -10, i32 -10], [8 x i32] [i32 -10, i32 -1, i32 0, i32 0, i32 -1, i32 -10, i32 -1, i32 2]], [3 x [8 x i32]] [[8 x i32] [i32 -10, i32 2065647748, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2065647748], [8 x i32] [i32 1370415146, i32 -1, i32 -1, i32 -1, i32 2, i32 -2046826643, i32 -2046826643, i32 2], [8 x i32] [i32 0, i32 2, i32 2, i32 0, i32 1370415146, i32 2065647748, i32 -2046826643, i32 -10]], [3 x [8 x i32]] [[8 x i32] [i32 -1, i32 0, i32 -1, i32 -2046826643, i32 -1, i32 0, i32 -1, i32 -1], [8 x i32] [i32 -1, i32 0, i32 -1, i32 -1, i32 2065647748, i32 2065647748, i32 -1, i32 -1], [8 x i32] [i32 2, i32 2, i32 0, i32 1370415146, i32 2065647748, i32 -2046826643, i32 -10, i32 -2046826643]]], align 16
@func_1.l_2752 = private unnamed_addr constant [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], align 16
@g_2236 = internal global i16** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [7 x [4 x i16*]]]* @g_2237 to i8*), i64 192) to i16**), align 8
@func_1.l_2698 = private unnamed_addr constant [6 x [2 x i32]] [[2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 -1, i32 -1]], align 16
@g_2522 = internal global i32** @g_555, align 8
@g_290 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_133 to i8*), i64 8) to i32*), align 8
@g_1439 = internal global i8** null, align 8
@g_916 = internal global i32** null, align 8
@g_555 = internal global i32* @g_96, align 8
@g_1767 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i32*]* @g_1768 to i8*), i64 16) to i32**), align 8
@g_560 = internal global i32** @g_555, align 8
@g_2789 = internal global i32** @g_555, align 8
@g_2795 = internal global i16***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x i16****]]* @g_2796 to i8*), i64 144) to i16*****), align 8
@g_2796 = internal global [6 x [6 x i16****]] [[6 x i16****] [i16**** @g_2797, i16**** @g_2797, i16**** @g_2797, i16**** @g_2797, i16**** null, i16**** @g_2797], [6 x i16****] [i16**** null, i16**** null, i16**** null, i16**** null, i16**** null, i16**** @g_2797], [6 x i16****] [i16**** @g_2797, i16**** @g_2797, i16**** null, i16**** @g_2797, i16**** null, i16**** @g_2797], [6 x i16****] [i16**** @g_2797, i16**** @g_2797, i16**** @g_2797, i16**** @g_2797, i16**** @g_2797, i16**** @g_2797], [6 x i16****] [i16**** @g_2797, i16**** @g_2797, i16**** null, i16**** null, i16**** @g_2797, i16**** @g_2797], [6 x i16****] [i16**** @g_2797, i16**** @g_2797, i16**** null, i16**** @g_2797, i16**** null, i16**** @g_2797]], align 16
@g_915 = internal global i32*** @g_916, align 8
@g_611 = internal global i8** @g_612, align 8
@g_2587 = internal global i64* @g_363, align 8
@func_1.l_2850 = internal constant [4 x [1 x [9 x i32]]] [[1 x [9 x i32]] [[9 x i32] [i32 -297304465, i32 1573663420, i32 1205669268, i32 8, i32 1205669268, i32 1573663420, i32 -297304465, i32 -297304465, i32 1573663420]], [1 x [9 x i32]] [[9 x i32] [i32 8, i32 1573663420, i32 9, i32 1573663420, i32 8, i32 0, i32 0, i32 8, i32 1573663420]], [1 x [9 x i32]] [[9 x i32] [i32 -297304465, i32 1205669268, i32 -297304465, i32 0, i32 9, i32 9, i32 0, i32 -297304465, i32 1205669268]], [1 x [9 x i32]] [[9 x i32] [i32 1205669268, i32 -297304465, i32 0, i32 9, i32 1205669268, i32 9, i32 8, i32 -2, i32 8]]], align 16
@func_1.l_2940 = internal constant [10 x [5 x [3 x i32**]]] [[5 x [3 x i32**]] [[3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544]], [5 x [3 x i32**]] [[3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544]], [5 x [3 x i32**]] [[3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544]], [5 x [3 x i32**]] [[3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544]], [5 x [3 x i32**]] [[3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544]], [5 x [3 x i32**]] [[3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544]], [5 x [3 x i32**]] [[3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544]], [5 x [3 x i32**]] [[3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544]], [5 x [3 x i32**]] [[3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544]], [5 x [3 x i32**]] [[3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544], [3 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544]]], align 16
@func_1.l_2948 = private unnamed_addr constant [2 x [7 x [6 x i32]]] [[7 x [6 x i32]] [[6 x i32] [i32 -10, i32 -2117225970, i32 -10, i32 7, i32 -1, i32 -1], [6 x i32] [i32 -3, i32 1, i32 -3, i32 -1, i32 -1, i32 4], [6 x i32] [i32 -1, i32 6, i32 906980459, i32 -1, i32 1, i32 7], [6 x i32] [i32 -3, i32 -1, i32 -1579672222, i32 7, i32 4, i32 -3], [6 x i32] [i32 -10, i32 -3, i32 -1, i32 4, i32 -2117225970, i32 4], [6 x i32] [i32 454857413, i32 1174472622, i32 -991852441, i32 -1, i32 -1, i32 -991852441], [6 x i32] [i32 -1, i32 -1, i32 454857413, i32 -1486921842, i32 4, i32 7]], [7 x [6 x i32]] [[6 x i32] [i32 4, i32 -1730186827, i32 1, i32 5, i32 -1, i32 454857413], [6 x i32] [i32 -3, i32 4, i32 1, i32 -10, i32 -1, i32 7], [6 x i32] [i32 -1579672222, i32 -10, i32 454857413, i32 1013369080, i32 -2, i32 906980459], [6 x i32] [i32 1013369080, i32 -2, i32 906980459, i32 -1, i32 -991852441, i32 1013369080], [6 x i32] [i32 -1, i32 -3, i32 0, i32 -1486921842, i32 0, i32 -3], [6 x i32] [i32 0, i32 4, i32 5, i32 -2117225970, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 0, i32 -2117225970, i32 -991852441, i32 -3, i32 7]]], align 16
@g_1885 = internal global i32** @g_818, align 8
@func_1.l_2810 = private unnamed_addr constant [1 x [1 x [4 x i32]]] [[1 x [4 x i32]] [[4 x i32] [i32 1, i32 1, i32 1, i32 1]]], align 16
@g_2798 = internal constant i16** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [7 x [5 x i16*]]]* @g_2799 to i8*), i64 424) to i16**), align 8
@g_2847 = internal global [2 x i8*] zeroinitializer, align 16
@g_1592 = internal global i64* @g_1471, align 8
@g_818 = internal global i32* @g_96, align 8
@g_319 = internal global i64* @g_247, align 8
@func_1.l_2873 = private unnamed_addr constant [3 x [8 x i32**]] [[8 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544], [8 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544], [8 x i32**] [i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544, i32** @g_1544]], align 16
@func_1.l_2934 = internal constant [1 x i32] zeroinitializer, align 4
@func_1.l_2999 = private unnamed_addr constant [10 x [7 x i16]] [[7 x i16] [i16 20394, i16 -5103, i16 -5103, i16 20394, i16 2, i16 20394, i16 -5103], [7 x i16] [i16 -28185, i16 -28185, i16 -5103, i16 -1, i16 -5103, i16 -28185, i16 -28185], [7 x i16] [i16 -28185, i16 -5103, i16 -1, i16 -5103, i16 -28185, i16 -28185, i16 -5103], [7 x i16] [i16 20394, i16 2, i16 20394, i16 -5103, i16 -5103, i16 20394, i16 2], [7 x i16] [i16 -5103, i16 2, i16 -1, i16 -1, i16 2, i16 -5103, i16 2], [7 x i16] [i16 20394, i16 -5103, i16 -5103, i16 20394, i16 2, i16 20394, i16 -5103], [7 x i16] [i16 -28185, i16 -28185, i16 -5103, i16 -1, i16 -5103, i16 -28185, i16 -28185], [7 x i16] [i16 -28185, i16 -5103, i16 -1, i16 -5103, i16 -28185, i16 -28185, i16 -5103], [7 x i16] [i16 20394, i16 2, i16 20394, i16 -5103, i16 -5103, i16 20394, i16 2], [7 x i16] [i16 -5103, i16 2, i16 -1, i16 -1, i16 2, i16 -5103, i16 2]], align 16
@g_1102 = internal global i32***** @g_1103, align 8
@g_262 = internal global i8** @g_263, align 8
@g_2893 = internal global i8*** @g_2894, align 8
@g_1877 = internal global [10 x i32***] [i32*** @g_1878, i32*** @g_1878, i32*** @g_1878, i32*** @g_1878, i32*** @g_1878, i32*** @g_1878, i32*** @g_1878, i32*** @g_1878, i32*** @g_1878, i32*** @g_1878], align 16
@g_2937 = internal constant i16 -16669, align 2
@g_2586 = internal global i64** @g_2587, align 8
@g_442 = internal global i32**** @g_443, align 8
@g_1534 = internal global i16*** @g_1535, align 8
@g_2406 = internal global i8** @g_2407, align 8
@g_392 = internal global i32*** @g_393, align 8
@g_1876 = internal global i32**** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32***]* @g_1877 to i8*), i64 16) to i32****), align 8
@g_2797 = internal global i16*** @g_2798, align 8
@func_1.l_3035 = internal constant [2 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 282) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 282) to i16*)], align 16
@g_889 = internal global i32* @g_96, align 8
@g_1536 = internal global i16* @g_1537, align 8
@g_2237 = internal global [8 x [7 x [4 x i16*]]] [[7 x [4 x i16*]] [[4 x i16*] [i16* null, i16* @g_1514, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* @g_900, i16* @g_1514, i16* @g_900, i16* null], [4 x i16*] [i16* @g_1740, i16* @g_900, i16* null, i16* @g_1740], [4 x i16*] [i16* @g_1740, i16* @g_900, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* null, i16* @g_900, i16* @g_900, i16* null], [4 x i16*] [i16* @g_900, i16* @g_1514, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_1514, i16* @g_1740]], [7 x [4 x i16*]] [[4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_900, i16* null], [4 x i16*] [i16* null, i16* @g_900, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* @g_900, i16* @g_900, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* null, i16* @g_900, i16* @g_1514, i16* null], [4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* null, i16* @g_1514, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* @g_900, i16* @g_1514, i16* @g_900, i16* null]], [7 x [4 x i16*]] [[4 x i16*] [i16* @g_1740, i16* @g_900, i16* null, i16* @g_1740], [4 x i16*] [i16* @g_1740, i16* @g_900, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* null, i16* @g_900, i16* @g_900, i16* null], [4 x i16*] [i16* @g_900, i16* @g_1514, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_1514, i16* @g_1740], [4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_900, i16* null], [4 x i16*] [i16* null, i16* @g_900, i16* @g_900, i16* @g_1740]], [7 x [4 x i16*]] [[4 x i16*] [i16* @g_900, i16* @g_900, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* null, i16* @g_900, i16* @g_1514, i16* null], [4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* null, i16* @g_1514, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* @g_900, i16* @g_1514, i16* @g_900, i16* null], [4 x i16*] [i16* @g_1740, i16* @g_900, i16* null, i16* @g_1740], [4 x i16*] [i16* @g_1740, i16* @g_900, i16* @g_900, i16* @g_1740]], [7 x [4 x i16*]] [[4 x i16*] [i16* null, i16* @g_900, i16* @g_900, i16* null], [4 x i16*] [i16* @g_900, i16* @g_1514, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_1514, i16* @g_1740], [4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_900, i16* null], [4 x i16*] [i16* null, i16* @g_900, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* @g_900, i16* @g_900, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* null, i16* @g_900, i16* @g_1514, i16* null]], [7 x [4 x i16*]] [[4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* null, i16* @g_1514, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* @g_900, i16* @g_1514, i16* @g_900, i16* null], [4 x i16*] [i16* @g_1740, i16* @g_900, i16* null, i16* @g_1740], [4 x i16*] [i16* @g_1740, i16* @g_900, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* null, i16* @g_900, i16* @g_900, i16* null], [4 x i16*] [i16* @g_900, i16* @g_1514, i16* @g_900, i16* @g_1740]], [7 x [4 x i16*]] [[4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_1514, i16* @g_1740], [4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_900, i16* null], [4 x i16*] [i16* null, i16* @g_900, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* @g_900, i16* @g_900, i16* @g_900, i16* @g_1740], [4 x i16*] [i16* null, i16* @g_900, i16* @g_1514, i16* null], [4 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_1740, i16* null], [4 x i16*] [i16* null, i16* null, i16* @g_900, i16* null]], [7 x [4 x i16*]] [[4 x i16*] [i16* @g_1740, i16* @g_900, i16* @g_900, i16* null], [4 x i16*] [i16* null, i16* @g_1514, i16* @g_900, i16* null], [4 x i16*] [i16* @g_1740, i16* @g_900, i16* @g_900, i16* null], [4 x i16*] [i16* @g_900, i16* @g_1514, i16* @g_900, i16* null], [4 x i16*] [i16* @g_900, i16* @g_900, i16* @g_1514, i16* null], [4 x i16*] zeroinitializer, [4 x i16*] [i16* @g_900, i16* @g_900, i16* @g_900, i16* null]]], align 16
@g_1768 = internal constant [3 x i32*] [i32* @g_1769, i32* @g_1769, i32* @g_1769], align 16
@g_2799 = internal global [7 x [7 x [5 x i16*]]] [[7 x [5 x i16*]] [[5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*), i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*), i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 4) to i16*)], [5 x i16*] [i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* null, i16* @g_900, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 84) to i16*)], [5 x i16*] [i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*)], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*), i16* null, i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*)], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*), i16* @g_1514, i16* null, i16* @g_1740, i16* null], [5 x i16*] [i16* null, i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* @g_1740, i16* @g_900], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* null, i16* null, i16* @g_1740, i16* null]], [7 x [5 x i16*]] [[5 x i16*] [i16* null, i16* @g_900, i16* @g_900, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*), i16* @g_1740], [5 x i16*] [i16* @g_1740, i16* null, i16* null, i16* @g_1514, i16* @g_1740], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 84) to i16*), i16* @g_1740, i16* @g_1740, i16* @g_900, i16* null], [5 x i16*] [i16* @g_1740, i16* @g_1740, i16* null, i16* null, i16* @g_1740], [5 x i16*] [i16* null, i16* null, i16* @g_1740, i16* null, i16* null], [5 x i16*] [i16* @g_900, i16* null, i16* @g_900, i16* null, i16* @g_900], [5 x i16*] [i16* @g_1514, i16* null, i16* @g_1514, i16* @g_1740, i16* @g_900]], [7 x [5 x i16*]] [[5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*), i16* @g_1514, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 4) to i16*), i16* null, i16* @g_900], [5 x i16*] [i16* @g_1740, i16* @g_1740, i16* null, i16* @g_1740, i16* null], [5 x i16*] [i16* @g_900, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*), i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*), i16* @g_1740], [5 x i16*] [i16* null, i16* null, i16* @g_900, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* null], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 322) to i16*), i16* @g_1514, i16* @g_900, i16* null, i16* @g_1740], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 4) to i16*), i16* @g_1740, i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 4) to i16*)], [5 x i16*] [i16* @g_900, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* null, i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*)]], [7 x [5 x i16*]] [[5 x i16*] [i16* @g_1514, i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 4) to i16*), i16* null, i16* null], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* @g_1514, i16* null, i16* null], [5 x i16*] [i16* @g_1514, i16* @g_1514, i16* @g_900, i16* null, i16* @g_1514], [5 x i16*] [i16* @g_900, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*), i16* @g_1740, i16* @g_1740, i16* null], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 322) to i16*), i16* null, i16* @g_1740, i16* null], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 322) to i16*), i16* @g_900, i16* @g_1740, i16* @g_1740, i16* @g_1514], [5 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* null, i16* @g_1740, i16* null]], [7 x [5 x i16*]] [[5 x i16*] [i16* @g_900, i16* @g_900, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 84) to i16*), i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*)], [5 x i16*] [i16* @g_1740, i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*), i16* null, i16* @g_900], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*), i16* @g_1740, i16* null, i16* null, i16* null], [5 x i16*] [i16* @g_1514, i16* null, i16* @g_900, i16* @g_1740, i16* null], [5 x i16*] [i16* @g_900, i16* @g_900, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*), i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*)], [5 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* @g_1514, i16* null, i16* null], [5 x i16*] [i16* @g_1740, i16* @g_900, i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* null]], [7 x [5 x i16*]] [[5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 84) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 322) to i16*), i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*)], [5 x i16*] [i16* @g_1740, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*), i16* @g_1740, i16* @g_1740, i16* null], [5 x i16*] [i16* @g_1740, i16* @g_1514, i16* @g_1740, i16* null, i16* null], [5 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* null, i16* @g_1740, i16* @g_900], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* null, i16* @g_1740, i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*)], [5 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* @g_1740, i16* null, i16* null], [5 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 4) to i16*), i16* null, i16* null, i16* @g_1514]], [7 x [5 x i16*]] [[5 x i16*] [i16* null, i16* @g_1514, i16* @g_1740, i16* @g_900, i16* null], [5 x i16*] [i16* null, i16* null, i16* @g_1514, i16* @g_1514, i16* null], [5 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 342) to i16*), i16* null, i16* @g_1514], [5 x i16*] [i16* null, i16* @g_1740, i16* @g_900, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 4) to i16*), i16* null], [5 x i16*] [i16* @g_1514, i16* @g_1740, i16* @g_1740, i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 384) to i16*)], [5 x i16*] [i16* @g_1740, i16* @g_1740, i16* null, i16* @g_1514, i16* @g_1514], [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 4) to i16*), i16* @g_1514, i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x [8 x i16]]]* @g_2635 to i8*), i64 448) to i16*), i16* @g_1514]]], align 16
@g_1103 = internal global i32**** null, align 8
@g_263 = internal global i8* null, align 8
@g_2894 = internal global i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_2847, i32 0, i32 0), align 8
@g_1878 = internal constant i32** null, align 8
@g_443 = internal global i32*** null, align 8
@.str.60 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i8, i8* @g_4, align 1, !tbaa !9
  %92 = sext i8 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_25, align 4, !tbaa !1
  %95 = zext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i8, i8* @g_33, align 1, !tbaa !9
  %98 = zext i8 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i16, i16* @g_79, align 2, !tbaa !10
  %101 = zext i16 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i32, i32* @g_96, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i8, i8* @g_108, align 1, !tbaa !9
  %107 = sext i8 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %125, %89
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = icmp slt i32 %110, 7
  br i1 %111, label %112, label %128

; <label>:112                                     ; preds = %109
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [7 x i32], [7 x i32]* @g_133, i32 0, i64 %114
  %116 = load i32, i32* %115, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %118)
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

; <label>:121                                     ; preds = %112
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %122)
  br label %124

; <label>:124                                     ; preds = %121, %112
  br label %125

; <label>:125                                     ; preds = %124
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:128                                     ; preds = %109
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %129

; <label>:129                                     ; preds = %145, %128
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %131 = icmp slt i32 %130, 10
  br i1 %131, label %132, label %148

; <label>:132                                     ; preds = %129
  %133 = load i32, i32* %i, align 4, !tbaa !1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x i8], [10 x i8]* @g_200, i32 0, i64 %134
  %136 = load i8, i8* %135, align 1, !tbaa !9
  %137 = sext i8 %136 to i64
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %138)
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

; <label>:141                                     ; preds = %132
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %142)
  br label %144

; <label>:144                                     ; preds = %141, %132
  br label %145

; <label>:145                                     ; preds = %144
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %i, align 4, !tbaa !1
  br label %129

; <label>:148                                     ; preds = %129
  %149 = load i32, i32* @g_208, align 4, !tbaa !1
  %150 = zext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %151)
  %152 = load volatile i8, i8* @g_241, align 1, !tbaa !9
  %153 = sext i8 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %154)
  %155 = load i64, i64* @g_247, align 8, !tbaa !7
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %156)
  %157 = load i16, i16* @g_250, align 2, !tbaa !10
  %158 = zext i16 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %159)
  %160 = load i8, i8* @g_251, align 1, !tbaa !9
  %161 = sext i8 %160 to i64
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %162)
  %163 = load i32, i32* @g_281, align 4, !tbaa !1
  %164 = zext i32 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %165)
  %166 = load i32, i32* @g_321, align 4, !tbaa !1
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %168)
  %169 = load i64, i64* @g_363, align 8, !tbaa !7
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %170)
  %171 = load i64, i64* @g_479, align 8, !tbaa !7
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %172)
  %173 = load i16, i16* @g_513, align 2, !tbaa !10
  %174 = zext i16 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %175)
  %176 = load volatile i64, i64* @g_516, align 8, !tbaa !7
  %177 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %177)
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1911309270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %178)
  %179 = load i32, i32* @g_561, align 4, !tbaa !1
  %180 = zext i32 %179 to i64
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %181)
  %182 = load volatile i64, i64* @g_596, align 8, !tbaa !7
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %183)
  %184 = load i32, i32* @g_627, align 4, !tbaa !1
  %185 = zext i32 %184 to i64
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %186)
  %187 = load i32, i32* @g_638, align 4, !tbaa !1
  %188 = sext i32 %187 to i64
  %189 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %188, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %189)
  %190 = load i32, i32* @g_687, align 4, !tbaa !1
  %191 = zext i32 %190 to i64
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %192)
  %193 = load i32, i32* @g_691, align 4, !tbaa !1
  %194 = zext i32 %193 to i64
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %195)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %196

; <label>:196                                     ; preds = %236, %148
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = icmp slt i32 %197, 10
  br i1 %198, label %199, label %239

; <label>:199                                     ; preds = %196
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %200

; <label>:200                                     ; preds = %232, %199
  %201 = load i32, i32* %j, align 4, !tbaa !1
  %202 = icmp slt i32 %201, 8
  br i1 %202, label %203, label %235

; <label>:203                                     ; preds = %200
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %204

; <label>:204                                     ; preds = %228, %203
  %205 = load i32, i32* %k, align 4, !tbaa !1
  %206 = icmp slt i32 %205, 3
  br i1 %206, label %207, label %231

; <label>:207                                     ; preds = %204
  %208 = load i32, i32* %k, align 4, !tbaa !1
  %209 = sext i32 %208 to i64
  %210 = load i32, i32* %j, align 4, !tbaa !1
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* %i, align 4, !tbaa !1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [10 x [8 x [3 x i32]]], [10 x [8 x [3 x i32]]]* @g_833, i32 0, i64 %213
  %215 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %214, i32 0, i64 %211
  %216 = getelementptr inbounds [3 x i32], [3 x i32]* %215, i32 0, i64 %209
  %217 = load i32, i32* %216, align 4, !tbaa !1
  %218 = sext i32 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 %219)
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

; <label>:222                                     ; preds = %207
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = load i32, i32* %j, align 4, !tbaa !1
  %225 = load i32, i32* %k, align 4, !tbaa !1
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), i32 %223, i32 %224, i32 %225)
  br label %227

; <label>:227                                     ; preds = %222, %207
  br label %228

; <label>:228                                     ; preds = %227
  %229 = load i32, i32* %k, align 4, !tbaa !1
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %k, align 4, !tbaa !1
  br label %204

; <label>:231                                     ; preds = %204
  br label %232

; <label>:232                                     ; preds = %231
  %233 = load i32, i32* %j, align 4, !tbaa !1
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %j, align 4, !tbaa !1
  br label %200

; <label>:235                                     ; preds = %200
  br label %236

; <label>:236                                     ; preds = %235
  %237 = load i32, i32* %i, align 4, !tbaa !1
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %i, align 4, !tbaa !1
  br label %196

; <label>:239                                     ; preds = %196
  %240 = load i32, i32* @g_888, align 4, !tbaa !1
  %241 = sext i32 %240 to i64
  %242 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %242)
  %243 = load i16, i16* @g_900, align 2, !tbaa !10
  %244 = sext i16 %243 to i64
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %245)
  %246 = load i32, i32* @g_984, align 4, !tbaa !1
  %247 = zext i32 %246 to i64
  %248 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %248)
  %249 = load i16, i16* @g_1014, align 2, !tbaa !10
  %250 = zext i16 %249 to i64
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %251)
  %252 = load i64, i64* @g_1019, align 8, !tbaa !7
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %253)
  %254 = load i8, i8* @g_1021, align 1, !tbaa !9
  %255 = zext i8 %254 to i64
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %256)
  %257 = load volatile i64, i64* @g_1105, align 8, !tbaa !7
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %258)
  %259 = load volatile i32, i32* @g_1293, align 4, !tbaa !1
  %260 = zext i32 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %261)
  %262 = load i64, i64* @g_1374, align 8, !tbaa !7
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %263)
  %264 = load i64, i64* @g_1471, align 8, !tbaa !7
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %265)
  %266 = load i16, i16* @g_1514, align 2, !tbaa !10
  %267 = sext i16 %266 to i64
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %267, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %268)
  %269 = load volatile i16, i16* @g_1537, align 2, !tbaa !10
  %270 = sext i16 %269 to i64
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %271)
  %272 = load i16, i16* @g_1740, align 2, !tbaa !10
  %273 = sext i16 %272 to i64
  %274 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %273, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %274)
  %275 = load i32, i32* @g_1766, align 4, !tbaa !1
  %276 = sext i32 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %277)
  %278 = load i32, i32* @g_1769, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %280)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %281

; <label>:281                                     ; preds = %309, %239
  %282 = load i32, i32* %i, align 4, !tbaa !1
  %283 = icmp slt i32 %282, 2
  br i1 %283, label %284, label %312

; <label>:284                                     ; preds = %281
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %285

; <label>:285                                     ; preds = %305, %284
  %286 = load i32, i32* %j, align 4, !tbaa !1
  %287 = icmp slt i32 %286, 4
  br i1 %287, label %288, label %308

; <label>:288                                     ; preds = %285
  %289 = load i32, i32* %j, align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %i, align 4, !tbaa !1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [2 x [4 x i16]], [2 x [4 x i16]]* @g_1889, i32 0, i64 %292
  %294 = getelementptr inbounds [4 x i16], [4 x i16]* %293, i32 0, i64 %290
  %295 = load i16, i16* %294, align 2, !tbaa !10
  %296 = zext i16 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i32 %297)
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %304

; <label>:300                                     ; preds = %288
  %301 = load i32, i32* %i, align 4, !tbaa !1
  %302 = load i32, i32* %j, align 4, !tbaa !1
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i32 %301, i32 %302)
  br label %304

; <label>:304                                     ; preds = %300, %288
  br label %305

; <label>:305                                     ; preds = %304
  %306 = load i32, i32* %j, align 4, !tbaa !1
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %j, align 4, !tbaa !1
  br label %285

; <label>:308                                     ; preds = %285
  br label %309

; <label>:309                                     ; preds = %308
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %i, align 4, !tbaa !1
  br label %281

; <label>:312                                     ; preds = %281
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %313

; <label>:313                                     ; preds = %329, %312
  %314 = load i32, i32* %i, align 4, !tbaa !1
  %315 = icmp slt i32 %314, 2
  br i1 %315, label %316, label %332

; <label>:316                                     ; preds = %313
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [2 x i32], [2 x i32]* @g_2041, i32 0, i64 %318
  %320 = load i32, i32* %319, align 4, !tbaa !1
  %321 = sext i32 %320 to i64
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 %322)
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

; <label>:325                                     ; preds = %316
  %326 = load i32, i32* %i, align 4, !tbaa !1
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %326)
  br label %328

; <label>:328                                     ; preds = %325, %316
  br label %329

; <label>:329                                     ; preds = %328
  %330 = load i32, i32* %i, align 4, !tbaa !1
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %i, align 4, !tbaa !1
  br label %313

; <label>:332                                     ; preds = %313
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -2016519237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %333)
  %334 = load i32, i32* @g_2293, align 4, !tbaa !1
  %335 = sext i32 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %336)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %337

; <label>:337                                     ; preds = %353, %332
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = icmp slt i32 %338, 4
  br i1 %339, label %340, label %356

; <label>:340                                     ; preds = %337
  %341 = load i32, i32* %i, align 4, !tbaa !1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [4 x i32], [4 x i32]* @g_2392, i32 0, i64 %342
  %344 = load i32, i32* %343, align 4, !tbaa !1
  %345 = sext i32 %344 to i64
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %345, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 %346)
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

; <label>:349                                     ; preds = %340
  %350 = load i32, i32* %i, align 4, !tbaa !1
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %350)
  br label %352

; <label>:352                                     ; preds = %349, %340
  br label %353

; <label>:353                                     ; preds = %352
  %354 = load i32, i32* %i, align 4, !tbaa !1
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %i, align 4, !tbaa !1
  br label %337

; <label>:356                                     ; preds = %337
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %357

; <label>:357                                     ; preds = %373, %356
  %358 = load i32, i32* %i, align 4, !tbaa !1
  %359 = icmp slt i32 %358, 6
  br i1 %359, label %360, label %376

; <label>:360                                     ; preds = %357
  %361 = load i32, i32* %i, align 4, !tbaa !1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [6 x i32], [6 x i32]* @g_2397, i32 0, i64 %362
  %364 = load volatile i32, i32* %363, align 4, !tbaa !1
  %365 = zext i32 %364 to i64
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %365, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i32 %366)
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

; <label>:369                                     ; preds = %360
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %370)
  br label %372

; <label>:372                                     ; preds = %369, %360
  br label %373

; <label>:373                                     ; preds = %372
  %374 = load i32, i32* %i, align 4, !tbaa !1
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %i, align 4, !tbaa !1
  br label %357

; <label>:376                                     ; preds = %357
  %377 = load i8, i8* @g_2506, align 1, !tbaa !9
  %378 = zext i8 %377 to i64
  %379 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %379)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %380

; <label>:380                                     ; preds = %420, %376
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %382 = icmp slt i32 %381, 5
  br i1 %382, label %383, label %423

; <label>:383                                     ; preds = %380
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %384

; <label>:384                                     ; preds = %416, %383
  %385 = load i32, i32* %j, align 4, !tbaa !1
  %386 = icmp slt i32 %385, 6
  br i1 %386, label %387, label %419

; <label>:387                                     ; preds = %384
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %388

; <label>:388                                     ; preds = %412, %387
  %389 = load i32, i32* %k, align 4, !tbaa !1
  %390 = icmp slt i32 %389, 8
  br i1 %390, label %391, label %415

; <label>:391                                     ; preds = %388
  %392 = load i32, i32* %k, align 4, !tbaa !1
  %393 = sext i32 %392 to i64
  %394 = load i32, i32* %j, align 4, !tbaa !1
  %395 = sext i32 %394 to i64
  %396 = load i32, i32* %i, align 4, !tbaa !1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [5 x [6 x [8 x i16]]], [5 x [6 x [8 x i16]]]* @g_2635, i32 0, i64 %397
  %399 = getelementptr inbounds [6 x [8 x i16]], [6 x [8 x i16]]* %398, i32 0, i64 %395
  %400 = getelementptr inbounds [8 x i16], [8 x i16]* %399, i32 0, i64 %393
  %401 = load i16, i16* %400, align 2, !tbaa !10
  %402 = sext i16 %401 to i64
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i32 %403)
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %411

; <label>:406                                     ; preds = %391
  %407 = load i32, i32* %i, align 4, !tbaa !1
  %408 = load i32, i32* %j, align 4, !tbaa !1
  %409 = load i32, i32* %k, align 4, !tbaa !1
  %410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), i32 %407, i32 %408, i32 %409)
  br label %411

; <label>:411                                     ; preds = %406, %391
  br label %412

; <label>:412                                     ; preds = %411
  %413 = load i32, i32* %k, align 4, !tbaa !1
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %k, align 4, !tbaa !1
  br label %388

; <label>:415                                     ; preds = %388
  br label %416

; <label>:416                                     ; preds = %415
  %417 = load i32, i32* %j, align 4, !tbaa !1
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %j, align 4, !tbaa !1
  br label %384

; <label>:419                                     ; preds = %384
  br label %420

; <label>:420                                     ; preds = %419
  %421 = load i32, i32* %i, align 4, !tbaa !1
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %i, align 4, !tbaa !1
  br label %380

; <label>:423                                     ; preds = %380
  %424 = load i64, i64* @g_2717, align 8, !tbaa !7
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %424, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %425)
  %426 = load volatile i32, i32* @g_2821, align 4, !tbaa !1
  %427 = sext i32 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %428)
  %429 = load volatile i16, i16* @g_2822, align 2, !tbaa !10
  %430 = zext i16 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %431)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %432

; <label>:432                                     ; preds = %472, %423
  %433 = load i32, i32* %i, align 4, !tbaa !1
  %434 = icmp slt i32 %433, 5
  br i1 %434, label %435, label %475

; <label>:435                                     ; preds = %432
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %436

; <label>:436                                     ; preds = %468, %435
  %437 = load i32, i32* %j, align 4, !tbaa !1
  %438 = icmp slt i32 %437, 5
  br i1 %438, label %439, label %471

; <label>:439                                     ; preds = %436
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %440

; <label>:440                                     ; preds = %464, %439
  %441 = load i32, i32* %k, align 4, !tbaa !1
  %442 = icmp slt i32 %441, 6
  br i1 %442, label %443, label %467

; <label>:443                                     ; preds = %440
  %444 = load i32, i32* %k, align 4, !tbaa !1
  %445 = sext i32 %444 to i64
  %446 = load i32, i32* %j, align 4, !tbaa !1
  %447 = sext i32 %446 to i64
  %448 = load i32, i32* %i, align 4, !tbaa !1
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [5 x [5 x [6 x i32]]], [5 x [5 x [6 x i32]]]* @g_2833, i32 0, i64 %449
  %451 = getelementptr inbounds [5 x [6 x i32]], [5 x [6 x i32]]* %450, i32 0, i64 %447
  %452 = getelementptr inbounds [6 x i32], [6 x i32]* %451, i32 0, i64 %445
  %453 = load i32, i32* %452, align 4, !tbaa !1
  %454 = zext i32 %453 to i64
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i32 %455)
  %456 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %463

; <label>:458                                     ; preds = %443
  %459 = load i32, i32* %i, align 4, !tbaa !1
  %460 = load i32, i32* %j, align 4, !tbaa !1
  %461 = load i32, i32* %k, align 4, !tbaa !1
  %462 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), i32 %459, i32 %460, i32 %461)
  br label %463

; <label>:463                                     ; preds = %458, %443
  br label %464

; <label>:464                                     ; preds = %463
  %465 = load i32, i32* %k, align 4, !tbaa !1
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %k, align 4, !tbaa !1
  br label %440

; <label>:467                                     ; preds = %440
  br label %468

; <label>:468                                     ; preds = %467
  %469 = load i32, i32* %j, align 4, !tbaa !1
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %j, align 4, !tbaa !1
  br label %436

; <label>:471                                     ; preds = %436
  br label %472

; <label>:472                                     ; preds = %471
  %473 = load i32, i32* %i, align 4, !tbaa !1
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %i, align 4, !tbaa !1
  br label %432

; <label>:475                                     ; preds = %432
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 48867, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %476)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %477

; <label>:477                                     ; preds = %505, %475
  %478 = load i32, i32* %i, align 4, !tbaa !1
  %479 = icmp slt i32 %478, 5
  br i1 %479, label %480, label %508

; <label>:480                                     ; preds = %477
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %481

; <label>:481                                     ; preds = %501, %480
  %482 = load i32, i32* %j, align 4, !tbaa !1
  %483 = icmp slt i32 %482, 4
  br i1 %483, label %484, label %504

; <label>:484                                     ; preds = %481
  %485 = load i32, i32* %j, align 4, !tbaa !1
  %486 = sext i32 %485 to i64
  %487 = load i32, i32* %i, align 4, !tbaa !1
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [5 x [4 x i16]], [5 x [4 x i16]]* @g_2939, i32 0, i64 %488
  %490 = getelementptr inbounds [4 x i16], [4 x i16]* %489, i32 0, i64 %486
  %491 = load i16, i16* %490, align 2, !tbaa !10
  %492 = zext i16 %491 to i64
  %493 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %492, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 %493)
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %500

; <label>:496                                     ; preds = %484
  %497 = load i32, i32* %i, align 4, !tbaa !1
  %498 = load i32, i32* %j, align 4, !tbaa !1
  %499 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i32 %497, i32 %498)
  br label %500

; <label>:500                                     ; preds = %496, %484
  br label %501

; <label>:501                                     ; preds = %500
  %502 = load i32, i32* %j, align 4, !tbaa !1
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %j, align 4, !tbaa !1
  br label %481

; <label>:504                                     ; preds = %481
  br label %505

; <label>:505                                     ; preds = %504
  %506 = load i32, i32* %i, align 4, !tbaa !1
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %i, align 4, !tbaa !1
  br label %477

; <label>:508                                     ; preds = %477
  %509 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %510 = zext i32 %509 to i64
  %511 = xor i64 %510, 4294967295
  %512 = trunc i64 %511 to i32
  %513 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %512, i32 %513)
  %514 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %514) #1
  %515 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %515) #1
  %516 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %516) #1
  %517 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %517) #1
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
  %l_18 = alloca i8, align 1
  %l_2511 = alloca i32, align 4
  %l_2541 = alloca i32, align 4
  %l_2598 = alloca i32***, align 8
  %l_2597 = alloca i32****, align 8
  %l_2646 = alloca i64***, align 8
  %l_2647 = alloca i64****, align 8
  %l_2648 = alloca i64***, align 8
  %l_2653 = alloca i64*, align 8
  %l_2654 = alloca i32, align 4
  %l_2687 = alloca i16*, align 8
  %l_2686 = alloca [7 x i16**], align 16
  %l_2685 = alloca [5 x [8 x i16***]], align 16
  %l_2684 = alloca i16****, align 8
  %l_2751 = alloca i8, align 1
  %l_2773 = alloca i8**, align 8
  %l_2923 = alloca i32**, align 8
  %l_2922 = alloca i32***, align 8
  %l_2921 = alloca i32****, align 8
  %l_2928 = alloca i16, align 2
  %l_2929 = alloca i64, align 8
  %l_3013 = alloca i8, align 1
  %l_3015 = alloca i64, align 8
  %l_3021 = alloca [5 x i32], align 16
  %l_3044 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_16 = alloca i16, align 2
  %l_17 = alloca i32, align 4
  %l_23 = alloca i32*, align 8
  %l_24 = alloca i32*, align 8
  %l_32 = alloca i8*, align 8
  %l_47 = alloca [2 x i32**], align 16
  %l_2524 = alloca i32****, align 8
  %l_2560 = alloca i32***, align 8
  %i1 = alloca i32, align 4
  %l_2607 = alloca i16, align 2
  %l_2616 = alloca i64, align 8
  %i2 = alloca i32, align 4
  %2 = alloca i32
  %l_2658 = alloca i8***, align 8
  %l_2657 = alloca i8****, align 8
  %l_2680 = alloca [5 x i32], align 16
  %l_2740 = alloca i32*, align 8
  %l_2757 = alloca [4 x i8], align 1
  %l_2813 = alloca i32, align 4
  %l_2848 = alloca [6 x i16], align 2
  %l_2869 = alloca i16, align 2
  %l_2925 = alloca [8 x i32****], align 16
  %l_2932 = alloca i32**, align 8
  %l_2957 = alloca i64, align 8
  %l_3014 = alloca [7 x i8*], align 16
  %l_3018 = alloca i8, align 1
  %l_3019 = alloca i32*, align 8
  %l_3020 = alloca [6 x i32*], align 16
  %l_3022 = alloca i8, align 1
  %l_3032 = alloca [6 x [4 x i8]], align 16
  %l_3033 = alloca i16*, align 8
  %l_3034 = alloca i64, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %l_2665 = alloca [9 x [3 x [8 x i32]]], align 16
  %l_2697 = alloca i32, align 4
  %l_2736 = alloca i16, align 2
  %l_2752 = alloca [4 x i32], align 16
  %l_2783 = alloca i32, align 4
  %l_2787 = alloca i32, align 4
  %l_2794 = alloca i16***, align 8
  %l_2793 = alloca i16****, align 8
  %l_2792 = alloca [5 x [5 x [2 x i16*****]]], align 16
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_2659 = alloca i32, align 4
  %l_2698 = alloca [6 x [2 x i32]], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %l_2660 = alloca i8, align 1
  %l_2679 = alloca i32, align 4
  %i9 = alloca i32, align 4
  %l_2661 = alloca i32*, align 8
  %l_2662 = alloca i32*, align 8
  %l_2663 = alloca i32*, align 8
  %l_2664 = alloca [3 x [8 x i32*]], align 16
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %l_2732 = alloca i8*, align 8
  %l_2733 = alloca i32, align 4
  %l_2734 = alloca i32, align 4
  %l_2735 = alloca i32*, align 8
  %l_2756 = alloca i32, align 4
  %l_2772 = alloca i8**, align 8
  %l_2743 = alloca i32*, align 8
  %l_2744 = alloca i32*, align 8
  %l_2745 = alloca i32*, align 8
  %l_2746 = alloca i32*, align 8
  %l_2747 = alloca i32*, align 8
  %l_2748 = alloca i32*, align 8
  %l_2749 = alloca i32*, align 8
  %l_2750 = alloca [4 x i32*], align 16
  %l_2753 = alloca [8 x i32], align 16
  %i12 = alloca i32, align 4
  %l_2739 = alloca i32*, align 8
  %l_2766 = alloca [6 x i32], align 16
  %l_2769 = alloca [8 x [10 x i32*]], align 16
  %l_2770 = alloca i8**, align 8
  %l_2771 = alloca [2 x [6 x i8***]], align 16
  %l_2786 = alloca i8*, align 8
  %l_2802 = alloca i32***, align 8
  %l_2803 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %j14 = alloca i32, align 4
  %l_2811 = alloca i32, align 4
  %l_2839 = alloca i16*, align 8
  %l_2841 = alloca i8*, align 8
  %l_2868 = alloca i32, align 4
  %l_2905 = alloca i32, align 4
  %l_2906 = alloca [3 x i32], align 4
  %l_2948 = alloca [2 x [7 x [6 x i32]]], align 16
  %l_2952 = alloca i16***, align 8
  %l_2951 = alloca i16****, align 8
  %l_2950 = alloca i16*****, align 8
  %l_2982 = alloca i8, align 1
  %l_2986 = alloca i32***, align 8
  %l_2987 = alloca i16, align 2
  %i15 = alloca i32, align 4
  %j16 = alloca i32, align 4
  %k17 = alloca i32, align 4
  %l_2810 = alloca [1 x [1 x [4 x i32]]], align 16
  %l_2812 = alloca i32, align 4
  %i18 = alloca i32, align 4
  %j19 = alloca i32, align 4
  %k20 = alloca i32, align 4
  %l_2806 = alloca i32*, align 8
  %l_2807 = alloca i32*, align 8
  %l_2808 = alloca i32*, align 8
  %l_2809 = alloca [8 x i32*], align 16
  %l_2840 = alloca i16*, align 8
  %l_2849 = alloca i64, align 8
  %i21 = alloca i32, align 4
  %l_2816 = alloca i32*, align 8
  %l_2817 = alloca [8 x i32*], align 16
  %l_2818 = alloca [7 x i32], align 16
  %i22 = alloca i32, align 4
  %j23 = alloca i32, align 4
  %k24 = alloca i32, align 4
  %l_2837 = alloca i64, align 8
  %l_2838 = alloca i8*, align 8
  %i26 = alloca i32, align 4
  %j27 = alloca i32, align 4
  %k28 = alloca i32, align 4
  %l_2843 = alloca i8*, align 8
  %l_2842 = alloca i8**, align 8
  %l_2844 = alloca i8**, align 8
  %l_2846 = alloca i8*, align 8
  %l_2845 = alloca i8**, align 8
  %l_2872 = alloca i32, align 4
  %l_2873 = alloca [3 x [8 x i32**]], align 16
  %l_2880 = alloca i32, align 4
  %l_2903 = alloca i32, align 4
  %l_2911 = alloca i32*, align 8
  %l_2924 = alloca [10 x i32*****], align 16
  %l_2938 = alloca i16*, align 8
  %l_2954 = alloca i32, align 4
  %l_2964 = alloca i32, align 4
  %l_2999 = alloca [10 x [7 x i16]], align 16
  %l_3001 = alloca i32, align 4
  %l_3002 = alloca [8 x [9 x i32**]], align 16
  %i32 = alloca i32, align 4
  %j33 = alloca i32, align 4
  %l_2874 = alloca i32**, align 8
  %l_2875 = alloca i32, align 4
  %l_2895 = alloca i16*, align 8
  %l_2904 = alloca i32, align 4
  %l_2907 = alloca i16, align 2
  %l_2878 = alloca i32, align 4
  %l_2879 = alloca i32, align 4
  %l_2884 = alloca i64, align 8
  %l_2887 = alloca i32**, align 8
  %l_2888 = alloca i32***, align 8
  %l_2896 = alloca [6 x i32], align 16
  %l_2897 = alloca i32*, align 8
  %l_2898 = alloca i32*, align 8
  %l_2899 = alloca i32*, align 8
  %l_2900 = alloca i32*, align 8
  %l_2901 = alloca i32*, align 8
  %l_2902 = alloca [9 x i32*], align 16
  %i34 = alloca i32, align 4
  %l_2910 = alloca i32***, align 8
  %l_2933 = alloca i32***, align 8
  %l_2936 = alloca i16*, align 8
  %l_2935 = alloca [9 x [5 x i16**]], align 16
  %l_2949 = alloca i8, align 1
  %l_2953 = alloca i16*****, align 8
  %l_2962 = alloca i32, align 4
  %l_2983 = alloca i64, align 8
  %i35 = alloca i32, align 4
  %j36 = alloca i32, align 4
  %l_2945 = alloca i32, align 4
  %l_2963 = alloca i32***, align 8
  %l_3000 = alloca i16, align 2
  %i42 = alloca i32, align 4
  %l_3038 = alloca [2 x i16], align 2
  %l_3043 = alloca i16, align 2
  %i43 = alloca i32, align 4
  call void @llvm.lifetime.start(i64 1, i8* %l_18) #1
  store i8 9, i8* %l_18, align 1, !tbaa !9
  %3 = bitcast i32* %l_2511 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -5, i32* %l_2511, align 4, !tbaa !1
  %4 = bitcast i32* %l_2541 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %l_2541, align 4, !tbaa !1
  %5 = bitcast i32**** %l_2598 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32*** null, i32**** %l_2598, align 8, !tbaa !5
  %6 = bitcast i32***** %l_2597 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32**** %l_2598, i32***** %l_2597, align 8, !tbaa !5
  %7 = bitcast i64**** %l_2646 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64*** @g_2589, i64**** %l_2646, align 8, !tbaa !5
  %8 = bitcast i64***** %l_2647 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64**** %l_2646, i64***** %l_2647, align 8, !tbaa !5
  %9 = bitcast i64**** %l_2648 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64*** @g_2589, i64**** %l_2648, align 8, !tbaa !5
  %10 = bitcast i64** %l_2653 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64* @g_1471, i64** %l_2653, align 8, !tbaa !5
  %11 = bitcast i32* %l_2654 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 5, i32* %l_2654, align 4, !tbaa !1
  %12 = bitcast i16** %l_2687 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i16* @g_1740, i16** %l_2687, align 8, !tbaa !5
  %13 = bitcast [7 x i16**]* %l_2686 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %13) #1
  %14 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i64 0, i64 0
  store i16** %l_2687, i16*** %14, !tbaa !5
  %15 = getelementptr inbounds i16**, i16*** %14, i64 1
  store i16** %l_2687, i16*** %15, !tbaa !5
  %16 = getelementptr inbounds i16**, i16*** %15, i64 1
  store i16** %l_2687, i16*** %16, !tbaa !5
  %17 = getelementptr inbounds i16**, i16*** %16, i64 1
  store i16** %l_2687, i16*** %17, !tbaa !5
  %18 = getelementptr inbounds i16**, i16*** %17, i64 1
  store i16** %l_2687, i16*** %18, !tbaa !5
  %19 = getelementptr inbounds i16**, i16*** %18, i64 1
  store i16** %l_2687, i16*** %19, !tbaa !5
  %20 = getelementptr inbounds i16**, i16*** %19, i64 1
  store i16** %l_2687, i16*** %20, !tbaa !5
  %21 = bitcast [5 x [8 x i16***]]* %l_2685 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %21) #1
  %22 = getelementptr inbounds [5 x [8 x i16***]], [5 x [8 x i16***]]* %l_2685, i64 0, i64 0
  %23 = getelementptr inbounds [8 x i16***], [8 x i16***]* %22, i64 0, i64 0
  %24 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %24, i16**** %23, !tbaa !5
  %25 = getelementptr inbounds i16***, i16**** %23, i64 1
  %26 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %26, i16**** %25, !tbaa !5
  %27 = getelementptr inbounds i16***, i16**** %25, i64 1
  store i16*** null, i16**** %27, !tbaa !5
  %28 = getelementptr inbounds i16***, i16**** %27, i64 1
  %29 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %29, i16**** %28, !tbaa !5
  %30 = getelementptr inbounds i16***, i16**** %28, i64 1
  store i16*** null, i16**** %30, !tbaa !5
  %31 = getelementptr inbounds i16***, i16**** %30, i64 1
  %32 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %32, i16**** %31, !tbaa !5
  %33 = getelementptr inbounds i16***, i16**** %31, i64 1
  %34 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %34, i16**** %33, !tbaa !5
  %35 = getelementptr inbounds i16***, i16**** %33, i64 1
  store i16*** null, i16**** %35, !tbaa !5
  %36 = getelementptr inbounds [8 x i16***], [8 x i16***]* %22, i64 1
  %37 = getelementptr inbounds [8 x i16***], [8 x i16***]* %36, i64 0, i64 0
  %38 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %38, i16**** %37, !tbaa !5
  %39 = getelementptr inbounds i16***, i16**** %37, i64 1
  store i16*** null, i16**** %39, !tbaa !5
  %40 = getelementptr inbounds i16***, i16**** %39, i64 1
  store i16*** null, i16**** %40, !tbaa !5
  %41 = getelementptr inbounds i16***, i16**** %40, i64 1
  %42 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %42, i16**** %41, !tbaa !5
  %43 = getelementptr inbounds i16***, i16**** %41, i64 1
  %44 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %44, i16**** %43, !tbaa !5
  %45 = getelementptr inbounds i16***, i16**** %43, i64 1
  %46 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %46, i16**** %45, !tbaa !5
  %47 = getelementptr inbounds i16***, i16**** %45, i64 1
  store i16*** null, i16**** %47, !tbaa !5
  %48 = getelementptr inbounds i16***, i16**** %47, i64 1
  store i16*** null, i16**** %48, !tbaa !5
  %49 = getelementptr inbounds [8 x i16***], [8 x i16***]* %36, i64 1
  %50 = getelementptr inbounds [8 x i16***], [8 x i16***]* %49, i64 0, i64 0
  store i16*** null, i16**** %50, !tbaa !5
  %51 = getelementptr inbounds i16***, i16**** %50, i64 1
  %52 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %52, i16**** %51, !tbaa !5
  %53 = getelementptr inbounds i16***, i16**** %51, i64 1
  %54 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %54, i16**** %53, !tbaa !5
  %55 = getelementptr inbounds i16***, i16**** %53, i64 1
  %56 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %56, i16**** %55, !tbaa !5
  %57 = getelementptr inbounds i16***, i16**** %55, i64 1
  %58 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %58, i16**** %57, !tbaa !5
  %59 = getelementptr inbounds i16***, i16**** %57, i64 1
  store i16*** null, i16**** %59, !tbaa !5
  %60 = getelementptr inbounds i16***, i16**** %59, i64 1
  %61 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %61, i16**** %60, !tbaa !5
  %62 = getelementptr inbounds i16***, i16**** %60, i64 1
  %63 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %63, i16**** %62, !tbaa !5
  %64 = getelementptr inbounds [8 x i16***], [8 x i16***]* %49, i64 1
  %65 = getelementptr inbounds [8 x i16***], [8 x i16***]* %64, i64 0, i64 0
  %66 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %66, i16**** %65, !tbaa !5
  %67 = getelementptr inbounds i16***, i16**** %65, i64 1
  %68 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %68, i16**** %67, !tbaa !5
  %69 = getelementptr inbounds i16***, i16**** %67, i64 1
  %70 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %70, i16**** %69, !tbaa !5
  %71 = getelementptr inbounds i16***, i16**** %69, i64 1
  store i16*** null, i16**** %71, !tbaa !5
  %72 = getelementptr inbounds i16***, i16**** %71, i64 1
  store i16*** null, i16**** %72, !tbaa !5
  %73 = getelementptr inbounds i16***, i16**** %72, i64 1
  %74 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %74, i16**** %73, !tbaa !5
  %75 = getelementptr inbounds i16***, i16**** %73, i64 1
  %76 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %76, i16**** %75, !tbaa !5
  %77 = getelementptr inbounds i16***, i16**** %75, i64 1
  %78 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %78, i16**** %77, !tbaa !5
  %79 = getelementptr inbounds [8 x i16***], [8 x i16***]* %64, i64 1
  %80 = getelementptr inbounds [8 x i16***], [8 x i16***]* %79, i64 0, i64 0
  %81 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %81, i16**** %80, !tbaa !5
  %82 = getelementptr inbounds i16***, i16**** %80, i64 1
  store i16*** null, i16**** %82, !tbaa !5
  %83 = getelementptr inbounds i16***, i16**** %82, i64 1
  %84 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %84, i16**** %83, !tbaa !5
  %85 = getelementptr inbounds i16***, i16**** %83, i64 1
  store i16*** null, i16**** %85, !tbaa !5
  %86 = getelementptr inbounds i16***, i16**** %85, i64 1
  %87 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %87, i16**** %86, !tbaa !5
  %88 = getelementptr inbounds i16***, i16**** %86, i64 1
  %89 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %89, i16**** %88, !tbaa !5
  %90 = getelementptr inbounds i16***, i16**** %88, i64 1
  store i16*** null, i16**** %90, !tbaa !5
  %91 = getelementptr inbounds i16***, i16**** %90, i64 1
  %92 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_2686, i32 0, i64 2
  store i16*** %92, i16**** %91, !tbaa !5
  %93 = bitcast i16***** %l_2684 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = getelementptr inbounds [5 x [8 x i16***]], [5 x [8 x i16***]]* %l_2685, i32 0, i64 1
  %95 = getelementptr inbounds [8 x i16***], [8 x i16***]* %94, i32 0, i64 3
  store i16**** %95, i16***** %l_2684, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2751) #1
  store i8 3, i8* %l_2751, align 1, !tbaa !9
  %96 = bitcast i8*** %l_2773 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  store i8** null, i8*** %l_2773, align 8, !tbaa !5
  %97 = bitcast i32*** %l_2923 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  store i32** @g_1544, i32*** %l_2923, align 8, !tbaa !5
  %98 = bitcast i32**** %l_2922 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  store i32*** %l_2923, i32**** %l_2922, align 8, !tbaa !5
  %99 = bitcast i32***** %l_2921 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  store i32**** %l_2922, i32***** %l_2921, align 8, !tbaa !5
  %100 = bitcast i16* %l_2928 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %100) #1
  store i16 7, i16* %l_2928, align 2, !tbaa !10
  %101 = bitcast i64* %l_2929 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #1
  store i64 -5143692312360547676, i64* %l_2929, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_3013) #1
  store i8 -1, i8* %l_3013, align 1, !tbaa !9
  %102 = bitcast i64* %l_3015 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  store i64 4217662727528470222, i64* %l_3015, align 8, !tbaa !7
  %103 = bitcast [5 x i32]* %l_3021 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %103) #1
  %104 = bitcast [5 x i32]* %l_3021 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* bitcast ([5 x i32]* @func_1.l_3021 to i8*), i64 20, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_3044) #1
  store i8 -1, i8* %l_3044, align 1, !tbaa !9
  %105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = load i8, i8* @g_4, align 1, !tbaa !9
  %108 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %107, i32 6)
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %110, label %140

; <label>:110                                     ; preds = %0
  %111 = bitcast i16* %l_16 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %111) #1
  store i16 3, i16* %l_16, align 2, !tbaa !10
  %112 = bitcast i32* %l_17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  store i32 -1813553995, i32* %l_17, align 4, !tbaa !1
  %113 = bitcast i32** %l_23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  store i32* null, i32** %l_23, align 8, !tbaa !5
  %114 = bitcast i32** %l_24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  store i32* @g_25, i32** %l_24, align 8, !tbaa !5
  %115 = bitcast i8** %l_32 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  store i8* @g_33, i8** %l_32, align 8, !tbaa !5
  %116 = bitcast [2 x i32**]* %l_47 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %116) #1
  %117 = bitcast i32***** %l_2524 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  store i32**** null, i32***** %l_2524, align 8, !tbaa !5
  %118 = bitcast i32**** %l_2560 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #1
  store i32*** null, i32**** %l_2560, align 8, !tbaa !5
  %119 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %120

; <label>:120                                     ; preds = %127, %110
  %121 = load i32, i32* %i1, align 4, !tbaa !1
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %123, label %130

; <label>:123                                     ; preds = %120
  %124 = load i32, i32* %i1, align 4, !tbaa !1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [2 x i32**], [2 x i32**]* %l_47, i32 0, i64 %125
  store i32** %l_23, i32*** %126, align 8, !tbaa !5
  br label %127

; <label>:127                                     ; preds = %123
  %128 = load i32, i32* %i1, align 4, !tbaa !1
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %i1, align 4, !tbaa !1
  br label %120

; <label>:130                                     ; preds = %120
  %131 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32**** %l_2560 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32***** %l_2524 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast [2 x i32**]* %l_47 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %134) #1
  %135 = bitcast i8** %l_32 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast i32** %l_24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i32** %l_23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i32* %l_17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i16* %l_16 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %139) #1
  br label %200

; <label>:140                                     ; preds = %0
  %141 = bitcast i16* %l_2607 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %141) #1
  store i16 0, i16* %l_2607, align 2, !tbaa !10
  %142 = bitcast i64* %l_2616 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #1
  store i64 4716308487902661058, i64* %l_2616, align 8, !tbaa !7
  %143 = load i8, i8* %l_18, align 1, !tbaa !9
  %144 = zext i8 %143 to i64
  %145 = and i64 %144, 5
  %146 = load i16, i16* %l_2607, align 2, !tbaa !10
  %147 = zext i16 %146 to i64
  %148 = xor i64 4, %147
  %149 = icmp eq i64 %145, %148
  %150 = zext i1 %149 to i32
  %151 = trunc i32 %150 to i16
  %152 = load i32, i32* %l_2541, align 4, !tbaa !1
  %153 = trunc i32 %152 to i16
  %154 = load i16, i16* %l_2607, align 2, !tbaa !10
  %155 = load i32, i32* %l_2511, align 4, !tbaa !1
  %156 = trunc i32 %155 to i16
  %157 = load i16**, i16*** @g_1535, align 8, !tbaa !5
  %158 = load i16*, i16** %157, align 8, !tbaa !5
  %159 = load volatile i16, i16* %158, align 2, !tbaa !10
  %160 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %156, i16 zeroext %159)
  %161 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext 4, i16 zeroext %160)
  %162 = zext i16 %161 to i32
  %163 = load i16, i16* %l_2607, align 2, !tbaa !10
  %164 = zext i16 %163 to i32
  %165 = icmp eq i32 %162, %164
  %166 = zext i1 %165 to i32
  %167 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %153, i32 %166)
  %168 = sext i16 %167 to i32
  %169 = load i32, i32* %l_2541, align 4, !tbaa !1
  %170 = or i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = icmp sle i64 %171, 37761
  %173 = zext i1 %172 to i32
  %174 = load i8*, i8** @g_612, align 8, !tbaa !5
  %175 = load i8, i8* %174, align 1, !tbaa !9
  %176 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %175, i32 7)
  %177 = sext i8 %176 to i16
  %178 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %151, i16 zeroext %177)
  %179 = load i64, i64* %l_2616, align 8, !tbaa !7
  %180 = trunc i64 %179 to i16
  %181 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %178, i16 signext %180)
  %182 = sext i16 %181 to i64
  %183 = load i16, i16* %l_2607, align 2, !tbaa !10
  %184 = zext i16 %183 to i64
  %185 = call i64 @safe_sub_func_uint64_t_u_u(i64 %182, i64 %184)
  %186 = trunc i64 %185 to i32
  %187 = load i32, i32* %l_2511, align 4, !tbaa !1
  %188 = call i32 @safe_div_func_int32_t_s_s(i32 %186, i32 %187)
  %189 = load i8*, i8** @g_255, align 8, !tbaa !5
  %190 = load i8, i8* %189, align 1, !tbaa !9
  %191 = sext i8 %190 to i32
  %192 = icmp sge i32 %188, %191
  %193 = zext i1 %192 to i32
  %194 = load volatile i32**, i32*** @g_289, align 8, !tbaa !5
  %195 = load i32*, i32** %194, align 8, !tbaa !5
  %196 = load i32, i32* %195, align 4, !tbaa !1
  %197 = load i32*, i32** @g_1414, align 8, !tbaa !5
  store i32 %196, i32* %197, align 4, !tbaa !1
  %198 = bitcast i64* %l_2616 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast i16* %l_2607 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %199) #1
  br label %200

; <label>:200                                     ; preds = %140, %130
  store i16 0, i16* @g_1740, align 2, !tbaa !10
  br label %201

; <label>:201                                     ; preds = %213, %200
  %202 = load i16, i16* @g_1740, align 2, !tbaa !10
  %203 = sext i16 %202 to i32
  %204 = icmp sle i32 %203, 9
  br i1 %204, label %205, label %218

; <label>:205                                     ; preds = %201
  %206 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %206) #1
  %207 = load i16, i16* @g_1740, align 2, !tbaa !10
  %208 = sext i16 %207 to i64
  %209 = getelementptr inbounds [10 x i8], [10 x i8]* @g_200, i32 0, i64 %208
  %210 = load i8, i8* %209, align 1, !tbaa !9
  %211 = sext i8 %210 to i32
  store i32 %211, i32* %1
  store i32 1, i32* %2
  %212 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  br label %2627
                                                  ; No predecessors!
  %214 = load i16, i16* @g_1740, align 2, !tbaa !10
  %215 = sext i16 %214 to i32
  %216 = add nsw i32 %215, 1
  %217 = trunc i32 %216 to i16
  store i16 %217, i16* @g_1740, align 2, !tbaa !10
  br label %201

; <label>:218                                     ; preds = %201
  %219 = load i16, i16* getelementptr inbounds ([5 x [6 x [8 x i16]]], [5 x [6 x [8 x i16]]]* @g_2635, i32 0, i64 4, i64 4, i64 0), align 2, !tbaa !10
  %220 = sext i16 %219 to i64
  %221 = load i8, i8* %l_18, align 1, !tbaa !9
  %222 = load i32, i32* %l_2511, align 4, !tbaa !1
  %223 = sext i32 %222 to i64
  %224 = load i32, i32* %l_2541, align 4, !tbaa !1
  %225 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext -7, i16 signext 10810)
  %226 = sext i16 %225 to i32
  %227 = icmp slt i32 %224, %226
  br i1 %227, label %228, label %229

; <label>:228                                     ; preds = %218
  br label %229

; <label>:229                                     ; preds = %228, %218
  %230 = phi i1 [ false, %218 ], [ true, %228 ]
  %231 = zext i1 %230 to i32
  %232 = load i32**, i32*** @g_393, align 8, !tbaa !5
  %233 = load i32*, i32** %232, align 8, !tbaa !5
  store i32 %231, i32* %233, align 4, !tbaa !1
  %234 = sext i32 %231 to i64
  %235 = icmp sle i64 %234, 1
  %236 = zext i1 %235 to i32
  %237 = sext i32 %236 to i64
  %238 = xor i64 %237, 1404124326
  %239 = icmp sgt i64 %223, %238
  %240 = zext i1 %239 to i32
  %241 = sext i32 %240 to i64
  %242 = load i64*, i64** %l_2653, align 8, !tbaa !5
  %243 = load i64, i64* %242, align 8, !tbaa !7
  %244 = or i64 %243, %241
  store i64 %244, i64* %242, align 8, !tbaa !7
  %245 = load i8, i8* %l_18, align 1, !tbaa !9
  %246 = zext i8 %245 to i64
  %247 = or i64 %244, %246
  %248 = load i32, i32* %l_2511, align 4, !tbaa !1
  %249 = sext i32 %248 to i64
  %250 = call i64 @safe_div_func_uint64_t_u_u(i64 %247, i64 %249)
  %251 = trunc i64 %250 to i8
  %252 = load i8*, i8** @g_255, align 8, !tbaa !5
  store i8 %251, i8* %252, align 1, !tbaa !9
  %253 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %221, i8 signext %251)
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

; <label>:256                                     ; preds = %229
  %257 = load i32, i32* %l_2541, align 4, !tbaa !1
  %258 = icmp ne i32 %257, 0
  br label %259

; <label>:259                                     ; preds = %256, %229
  %260 = phi i1 [ false, %229 ], [ %258, %256 ]
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %l_2541, align 4, !tbaa !1
  %263 = xor i32 %261, %262
  %264 = load i32, i32* %l_2654, align 4, !tbaa !1
  %265 = and i32 %264, %263
  store i32 %265, i32* %l_2654, align 4, !tbaa !1
  %266 = sext i32 %265 to i64
  %267 = call i64 @safe_sub_func_uint64_t_u_u(i64 %220, i64 %266)
  %268 = trunc i64 %267 to i8
  %269 = load i8, i8* %l_18, align 1, !tbaa !9
  %270 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %268, i8 signext %269)
  %271 = sext i8 %270 to i64
  %272 = or i64 %271, 447576337
  %273 = load i8, i8* %l_18, align 1, !tbaa !9
  %274 = zext i8 %273 to i64
  %275 = icmp slt i64 %272, %274
  %276 = zext i1 %275 to i32
  %277 = sext i32 %276 to i64
  %278 = icmp sgt i64 %277, 4
  %279 = zext i1 %278 to i32
  %280 = load i8, i8* %l_18, align 1, !tbaa !9
  %281 = zext i8 %280 to i32
  %282 = and i32 %279, %281
  %283 = trunc i32 %282 to i16
  store i16 %283, i16* @g_513, align 2, !tbaa !10
  %284 = load i8, i8* %l_18, align 1, !tbaa !9
  %285 = zext i8 %284 to i16
  %286 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %283, i16 zeroext %285)
  %287 = zext i16 %286 to i32
  %288 = load i32, i32* %l_2511, align 4, !tbaa !1
  %289 = call i32 @safe_div_func_uint32_t_u_u(i32 %287, i32 %288)
  %290 = trunc i32 %289 to i8
  %291 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %290, i32 6)
  %292 = load i32, i32* %l_2541, align 4, !tbaa !1
  %293 = load i32, i32* %l_2541, align 4, !tbaa !1
  %294 = icmp ne i32 %292, %293
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %l_2541, align 4, !tbaa !1
  %297 = call i32 @safe_div_func_uint32_t_u_u(i32 %295, i32 %296)
  %298 = load i8, i8* %l_18, align 1, !tbaa !9
  %299 = zext i8 %298 to i64
  %300 = icmp sle i64 -7, %299
  %301 = zext i1 %300 to i32
  %302 = trunc i32 %301 to i8
  %303 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %302, i32 6)
  %304 = zext i8 %303 to i32
  %305 = call i32 @safe_sub_func_uint32_t_u_u(i32 %304, i32 -2)
  %306 = zext i32 %305 to i64
  %307 = and i64 %306, -6565533998698094966
  %308 = load i64*, i64** @g_477, align 8, !tbaa !5
  %309 = load i64, i64* %308, align 8, !tbaa !7
  %310 = xor i64 %309, %307
  store i64 %310, i64* %308, align 8, !tbaa !7
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %313

; <label>:312                                     ; preds = %259
  br label %313

; <label>:313                                     ; preds = %312, %259
  %314 = phi i1 [ false, %259 ], [ true, %312 ]
  %315 = zext i1 %314 to i32
  %316 = sext i32 %315 to i64
  %317 = icmp slt i64 %316, 32128
  %318 = zext i1 %317 to i32
  %319 = trunc i32 %318 to i8
  %320 = load i8, i8* %l_18, align 1, !tbaa !9
  %321 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %319, i8 signext %320)
  %322 = sext i8 %321 to i64
  %323 = xor i64 %322, -1101988472419722043
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %2570

; <label>:325                                     ; preds = %313
  %326 = bitcast i8**** %l_2658 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %326) #1
  store i8*** null, i8**** %l_2658, align 8, !tbaa !5
  %327 = bitcast i8***** %l_2657 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %327) #1
  store i8**** %l_2658, i8***** %l_2657, align 8, !tbaa !5
  %328 = bitcast [5 x i32]* %l_2680 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %328) #1
  %329 = bitcast i32** %l_2740 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %329) #1
  %330 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 2
  store i32* %330, i32** %l_2740, align 8, !tbaa !5
  %331 = bitcast [4 x i8]* %l_2757 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %331) #1
  %332 = bitcast [4 x i8]* %l_2757 to i8*
  call void @llvm.memset.p0i8.i64(i8* %332, i8 0, i64 4, i32 1, i1 false)
  %333 = bitcast i32* %l_2813 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %333) #1
  store i32 -391123501, i32* %l_2813, align 4, !tbaa !1
  %334 = bitcast [6 x i16]* %l_2848 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %334) #1
  %335 = bitcast [6 x i16]* %l_2848 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %335, i8* bitcast ([6 x i16]* @func_1.l_2848 to i8*), i64 12, i32 2, i1 false)
  %336 = bitcast i16* %l_2869 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %336) #1
  store i16 1, i16* %l_2869, align 2, !tbaa !10
  %337 = bitcast [8 x i32****]* %l_2925 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %337) #1
  %338 = bitcast [8 x i32****]* %l_2925 to i8*
  call void @llvm.memset.p0i8.i64(i8* %338, i8 0, i64 64, i32 16, i1 false)
  %339 = bitcast i32*** %l_2932 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %339) #1
  store i32** @g_48, i32*** %l_2932, align 8, !tbaa !5
  %340 = bitcast i64* %l_2957 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %340) #1
  store i64 -230990775887217979, i64* %l_2957, align 8, !tbaa !7
  %341 = bitcast [7 x i8*]* %l_3014 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %341) #1
  %342 = bitcast [7 x i8*]* %l_3014 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %342, i8* bitcast ([7 x i8*]* @func_1.l_3014 to i8*), i64 56, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_3018) #1
  store i8 0, i8* %l_3018, align 1, !tbaa !9
  %343 = bitcast i32** %l_3019 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %343) #1
  %344 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 2
  store i32* %344, i32** %l_3019, align 8, !tbaa !5
  %345 = bitcast [6 x i32*]* %l_3020 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %345) #1
  %346 = getelementptr inbounds [6 x i32*], [6 x i32*]* %l_3020, i64 0, i64 0
  store i32* null, i32** %346, !tbaa !5
  %347 = getelementptr inbounds i32*, i32** %346, i64 1
  %348 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 1
  store i32* %348, i32** %347, !tbaa !5
  %349 = getelementptr inbounds i32*, i32** %347, i64 1
  store i32* null, i32** %349, !tbaa !5
  %350 = getelementptr inbounds i32*, i32** %349, i64 1
  store i32* null, i32** %350, !tbaa !5
  %351 = getelementptr inbounds i32*, i32** %350, i64 1
  %352 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 1
  store i32* %352, i32** %351, !tbaa !5
  %353 = getelementptr inbounds i32*, i32** %351, i64 1
  store i32* null, i32** %353, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_3022) #1
  store i8 2, i8* %l_3022, align 1, !tbaa !9
  %354 = bitcast [6 x [4 x i8]]* %l_3032 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %354) #1
  %355 = bitcast [6 x [4 x i8]]* %l_3032 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %355, i8* getelementptr inbounds ([6 x [4 x i8]], [6 x [4 x i8]]* @func_1.l_3032, i32 0, i32 0, i32 0), i64 24, i32 16, i1 false)
  %356 = bitcast i16** %l_3033 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %356) #1
  store i16* getelementptr inbounds ([5 x [6 x [8 x i16]]], [5 x [6 x [8 x i16]]]* @g_2635, i32 0, i64 4, i64 4, i64 0), i16** %l_3033, align 8, !tbaa !5
  %357 = bitcast i64* %l_3034 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %357) #1
  store i64 8537332713390976053, i64* %l_3034, align 8, !tbaa !7
  %358 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %358) #1
  %359 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %359) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %360

; <label>:360                                     ; preds = %367, %325
  %361 = load i32, i32* %i3, align 4, !tbaa !1
  %362 = icmp slt i32 %361, 5
  br i1 %362, label %363, label %370

; <label>:363                                     ; preds = %360
  %364 = load i32, i32* %i3, align 4, !tbaa !1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 %365
  store i32 1313953476, i32* %366, align 4, !tbaa !1
  br label %367

; <label>:367                                     ; preds = %363
  %368 = load i32, i32* %i3, align 4, !tbaa !1
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %i3, align 4, !tbaa !1
  br label %360

; <label>:370                                     ; preds = %360
  %371 = load i8*, i8** @g_2407, align 8, !tbaa !5
  %372 = load i8, i8* %371, align 1, !tbaa !9
  %373 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %372, i8 zeroext -7)
  %374 = icmp ne i8 %373, 0
  br i1 %374, label %375, label %1141

; <label>:375                                     ; preds = %370
  %376 = bitcast [9 x [3 x [8 x i32]]]* %l_2665 to i8*
  call void @llvm.lifetime.start(i64 864, i8* %376) #1
  %377 = bitcast [9 x [3 x [8 x i32]]]* %l_2665 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %377, i8* bitcast ([9 x [3 x [8 x i32]]]* @func_1.l_2665 to i8*), i64 864, i32 16, i1 false)
  %378 = bitcast i32* %l_2697 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %378) #1
  store i32 1795820946, i32* %l_2697, align 4, !tbaa !1
  %379 = bitcast i16* %l_2736 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %379) #1
  store i16 0, i16* %l_2736, align 2, !tbaa !10
  %380 = bitcast [4 x i32]* %l_2752 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %380) #1
  %381 = bitcast [4 x i32]* %l_2752 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %381, i8* bitcast ([4 x i32]* @func_1.l_2752 to i8*), i64 16, i32 16, i1 false)
  %382 = bitcast i32* %l_2783 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %382) #1
  store i32 2, i32* %l_2783, align 4, !tbaa !1
  %383 = bitcast i32* %l_2787 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %383) #1
  store i32 -3, i32* %l_2787, align 4, !tbaa !1
  %384 = bitcast i16**** %l_2794 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %384) #1
  store i16*** @g_2236, i16**** %l_2794, align 8, !tbaa !5
  %385 = bitcast i16***** %l_2793 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %385) #1
  store i16**** %l_2794, i16***** %l_2793, align 8, !tbaa !5
  %386 = bitcast [5 x [5 x [2 x i16*****]]]* %l_2792 to i8*
  call void @llvm.lifetime.start(i64 400, i8* %386) #1
  %387 = getelementptr inbounds [5 x [5 x [2 x i16*****]]], [5 x [5 x [2 x i16*****]]]* %l_2792, i64 0, i64 0
  %388 = getelementptr inbounds [5 x [2 x i16*****]], [5 x [2 x i16*****]]* %387, i64 0, i64 0
  %389 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %388, i64 0, i64 0
  store i16***** %l_2793, i16****** %389, !tbaa !5
  %390 = getelementptr inbounds i16*****, i16****** %389, i64 1
  store i16***** %l_2793, i16****** %390, !tbaa !5
  %391 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %388, i64 1
  %392 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %391, i64 0, i64 0
  store i16***** %l_2793, i16****** %392, !tbaa !5
  %393 = getelementptr inbounds i16*****, i16****** %392, i64 1
  store i16***** %l_2793, i16****** %393, !tbaa !5
  %394 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %391, i64 1
  %395 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %394, i64 0, i64 0
  store i16***** %l_2793, i16****** %395, !tbaa !5
  %396 = getelementptr inbounds i16*****, i16****** %395, i64 1
  store i16***** %l_2793, i16****** %396, !tbaa !5
  %397 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %394, i64 1
  %398 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %397, i64 0, i64 0
  store i16***** %l_2793, i16****** %398, !tbaa !5
  %399 = getelementptr inbounds i16*****, i16****** %398, i64 1
  store i16***** %l_2793, i16****** %399, !tbaa !5
  %400 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %397, i64 1
  %401 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %400, i64 0, i64 0
  store i16***** %l_2793, i16****** %401, !tbaa !5
  %402 = getelementptr inbounds i16*****, i16****** %401, i64 1
  store i16***** %l_2793, i16****** %402, !tbaa !5
  %403 = getelementptr inbounds [5 x [2 x i16*****]], [5 x [2 x i16*****]]* %387, i64 1
  %404 = getelementptr inbounds [5 x [2 x i16*****]], [5 x [2 x i16*****]]* %403, i64 0, i64 0
  %405 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %404, i64 0, i64 0
  store i16***** %l_2793, i16****** %405, !tbaa !5
  %406 = getelementptr inbounds i16*****, i16****** %405, i64 1
  store i16***** %l_2793, i16****** %406, !tbaa !5
  %407 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %404, i64 1
  %408 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %407, i64 0, i64 0
  store i16***** %l_2793, i16****** %408, !tbaa !5
  %409 = getelementptr inbounds i16*****, i16****** %408, i64 1
  store i16***** %l_2793, i16****** %409, !tbaa !5
  %410 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %407, i64 1
  %411 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %410, i64 0, i64 0
  store i16***** %l_2793, i16****** %411, !tbaa !5
  %412 = getelementptr inbounds i16*****, i16****** %411, i64 1
  store i16***** %l_2793, i16****** %412, !tbaa !5
  %413 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %410, i64 1
  %414 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %413, i64 0, i64 0
  store i16***** %l_2793, i16****** %414, !tbaa !5
  %415 = getelementptr inbounds i16*****, i16****** %414, i64 1
  store i16***** %l_2793, i16****** %415, !tbaa !5
  %416 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %413, i64 1
  %417 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %416, i64 0, i64 0
  store i16***** %l_2793, i16****** %417, !tbaa !5
  %418 = getelementptr inbounds i16*****, i16****** %417, i64 1
  store i16***** %l_2793, i16****** %418, !tbaa !5
  %419 = getelementptr inbounds [5 x [2 x i16*****]], [5 x [2 x i16*****]]* %403, i64 1
  %420 = getelementptr inbounds [5 x [2 x i16*****]], [5 x [2 x i16*****]]* %419, i64 0, i64 0
  %421 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %420, i64 0, i64 0
  store i16***** %l_2793, i16****** %421, !tbaa !5
  %422 = getelementptr inbounds i16*****, i16****** %421, i64 1
  store i16***** %l_2793, i16****** %422, !tbaa !5
  %423 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %420, i64 1
  %424 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %423, i64 0, i64 0
  store i16***** null, i16****** %424, !tbaa !5
  %425 = getelementptr inbounds i16*****, i16****** %424, i64 1
  store i16***** null, i16****** %425, !tbaa !5
  %426 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %423, i64 1
  %427 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %426, i64 0, i64 0
  store i16***** %l_2793, i16****** %427, !tbaa !5
  %428 = getelementptr inbounds i16*****, i16****** %427, i64 1
  store i16***** %l_2793, i16****** %428, !tbaa !5
  %429 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %426, i64 1
  %430 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %429, i64 0, i64 0
  store i16***** %l_2793, i16****** %430, !tbaa !5
  %431 = getelementptr inbounds i16*****, i16****** %430, i64 1
  store i16***** %l_2793, i16****** %431, !tbaa !5
  %432 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %429, i64 1
  %433 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %432, i64 0, i64 0
  store i16***** %l_2793, i16****** %433, !tbaa !5
  %434 = getelementptr inbounds i16*****, i16****** %433, i64 1
  store i16***** null, i16****** %434, !tbaa !5
  %435 = getelementptr inbounds [5 x [2 x i16*****]], [5 x [2 x i16*****]]* %419, i64 1
  %436 = getelementptr inbounds [5 x [2 x i16*****]], [5 x [2 x i16*****]]* %435, i64 0, i64 0
  %437 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %436, i64 0, i64 0
  store i16***** null, i16****** %437, !tbaa !5
  %438 = getelementptr inbounds i16*****, i16****** %437, i64 1
  store i16***** %l_2793, i16****** %438, !tbaa !5
  %439 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %436, i64 1
  %440 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %439, i64 0, i64 0
  store i16***** %l_2793, i16****** %440, !tbaa !5
  %441 = getelementptr inbounds i16*****, i16****** %440, i64 1
  store i16***** %l_2793, i16****** %441, !tbaa !5
  %442 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %439, i64 1
  %443 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %442, i64 0, i64 0
  store i16***** %l_2793, i16****** %443, !tbaa !5
  %444 = getelementptr inbounds i16*****, i16****** %443, i64 1
  store i16***** %l_2793, i16****** %444, !tbaa !5
  %445 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %442, i64 1
  %446 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %445, i64 0, i64 0
  store i16***** null, i16****** %446, !tbaa !5
  %447 = getelementptr inbounds i16*****, i16****** %446, i64 1
  store i16***** null, i16****** %447, !tbaa !5
  %448 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %445, i64 1
  %449 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %448, i64 0, i64 0
  store i16***** %l_2793, i16****** %449, !tbaa !5
  %450 = getelementptr inbounds i16*****, i16****** %449, i64 1
  store i16***** %l_2793, i16****** %450, !tbaa !5
  %451 = getelementptr inbounds [5 x [2 x i16*****]], [5 x [2 x i16*****]]* %435, i64 1
  %452 = getelementptr inbounds [5 x [2 x i16*****]], [5 x [2 x i16*****]]* %451, i64 0, i64 0
  %453 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %452, i64 0, i64 0
  store i16***** %l_2793, i16****** %453, !tbaa !5
  %454 = getelementptr inbounds i16*****, i16****** %453, i64 1
  store i16***** %l_2793, i16****** %454, !tbaa !5
  %455 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %452, i64 1
  %456 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %455, i64 0, i64 0
  store i16***** %l_2793, i16****** %456, !tbaa !5
  %457 = getelementptr inbounds i16*****, i16****** %456, i64 1
  store i16***** null, i16****** %457, !tbaa !5
  %458 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %455, i64 1
  %459 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %458, i64 0, i64 0
  store i16***** null, i16****** %459, !tbaa !5
  %460 = getelementptr inbounds i16*****, i16****** %459, i64 1
  store i16***** %l_2793, i16****** %460, !tbaa !5
  %461 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %458, i64 1
  %462 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %461, i64 0, i64 0
  store i16***** %l_2793, i16****** %462, !tbaa !5
  %463 = getelementptr inbounds i16*****, i16****** %462, i64 1
  store i16***** %l_2793, i16****** %463, !tbaa !5
  %464 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %461, i64 1
  %465 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %464, i64 0, i64 0
  store i16***** %l_2793, i16****** %465, !tbaa !5
  %466 = getelementptr inbounds i16*****, i16****** %465, i64 1
  store i16***** %l_2793, i16****** %466, !tbaa !5
  %467 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %467) #1
  %468 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %468) #1
  %469 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %469) #1
  %470 = load i8****, i8***** %l_2657, align 8, !tbaa !5
  %471 = icmp ne i8**** null, %470
  br i1 %471, label %472, label %549

; <label>:472                                     ; preds = %375
  %473 = bitcast i32* %l_2659 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %473) #1
  store i32 650591222, i32* %l_2659, align 4, !tbaa !1
  %474 = bitcast [6 x [2 x i32]]* %l_2698 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %474) #1
  %475 = bitcast [6 x [2 x i32]]* %l_2698 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %475, i8* bitcast ([6 x [2 x i32]]* @func_1.l_2698 to i8*), i64 48, i32 16, i1 false)
  %476 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %476) #1
  %477 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %477) #1
  store i32 5, i32* @g_1766, align 4, !tbaa !1
  br label %478

; <label>:478                                     ; preds = %541, %472
  %479 = load i32, i32* @g_1766, align 4, !tbaa !1
  %480 = icmp sge i32 %479, 0
  br i1 %480, label %481, label %544

; <label>:481                                     ; preds = %478
  call void @llvm.lifetime.start(i64 1, i8* %l_2660) #1
  store i8 5, i8* %l_2660, align 1, !tbaa !9
  %482 = bitcast i32* %l_2679 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %482) #1
  store i32 65717283, i32* %l_2679, align 4, !tbaa !1
  %483 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %483) #1
  store i16 5, i16* @g_900, align 2, !tbaa !10
  br label %484

; <label>:484                                     ; preds = %533, %481
  %485 = load i16, i16* @g_900, align 2, !tbaa !10
  %486 = sext i16 %485 to i32
  %487 = icmp sge i32 %486, 0
  br i1 %487, label %488, label %538

; <label>:488                                     ; preds = %484
  %489 = bitcast i32** %l_2661 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %489) #1
  store i32* %l_2659, i32** %l_2661, align 8, !tbaa !5
  %490 = bitcast i32** %l_2662 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %490) #1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_2041, i32 0, i64 1), i32** %l_2662, align 8, !tbaa !5
  %491 = bitcast i32** %l_2663 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %491) #1
  store i32* @g_2293, i32** %l_2663, align 8, !tbaa !5
  %492 = bitcast [3 x [8 x i32*]]* %l_2664 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %492) #1
  %493 = getelementptr inbounds [3 x [8 x i32*]], [3 x [8 x i32*]]* %l_2664, i64 0, i64 0
  %494 = getelementptr inbounds [8 x i32*], [8 x i32*]* %493, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), i32** %494, !tbaa !5
  %495 = getelementptr inbounds i32*, i32** %494, i64 1
  store i32* %l_2659, i32** %495, !tbaa !5
  %496 = getelementptr inbounds i32*, i32** %495, i64 1
  store i32* @g_2293, i32** %496, !tbaa !5
  %497 = getelementptr inbounds i32*, i32** %496, i64 1
  store i32* %l_2659, i32** %497, !tbaa !5
  %498 = getelementptr inbounds i32*, i32** %497, i64 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), i32** %498, !tbaa !5
  %499 = getelementptr inbounds i32*, i32** %498, i64 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), i32** %499, !tbaa !5
  %500 = getelementptr inbounds i32*, i32** %499, i64 1
  store i32* %l_2659, i32** %500, !tbaa !5
  %501 = getelementptr inbounds i32*, i32** %500, i64 1
  store i32* @g_2293, i32** %501, !tbaa !5
  %502 = getelementptr inbounds [8 x i32*], [8 x i32*]* %493, i64 1
  %503 = getelementptr inbounds [8 x i32*], [8 x i32*]* %502, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), i32** %503, !tbaa !5
  %504 = getelementptr inbounds i32*, i32** %503, i64 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), i32** %504, !tbaa !5
  %505 = getelementptr inbounds i32*, i32** %504, i64 1
  store i32* %l_2659, i32** %505, !tbaa !5
  %506 = getelementptr inbounds i32*, i32** %505, i64 1
  store i32* @g_2293, i32** %506, !tbaa !5
  %507 = getelementptr inbounds i32*, i32** %506, i64 1
  store i32* %l_2659, i32** %507, !tbaa !5
  %508 = getelementptr inbounds i32*, i32** %507, i64 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), i32** %508, !tbaa !5
  %509 = getelementptr inbounds i32*, i32** %508, i64 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), i32** %509, !tbaa !5
  %510 = getelementptr inbounds i32*, i32** %509, i64 1
  store i32* %l_2659, i32** %510, !tbaa !5
  %511 = getelementptr inbounds [8 x i32*], [8 x i32*]* %502, i64 1
  %512 = getelementptr inbounds [8 x i32*], [8 x i32*]* %511, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), i32** %512, !tbaa !5
  %513 = getelementptr inbounds i32*, i32** %512, i64 1
  store i32* %l_2659, i32** %513, !tbaa !5
  %514 = getelementptr inbounds i32*, i32** %513, i64 1
  store i32* %l_2659, i32** %514, !tbaa !5
  %515 = getelementptr inbounds i32*, i32** %514, i64 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), i32** %515, !tbaa !5
  %516 = getelementptr inbounds i32*, i32** %515, i64 1
  store i32* @g_1769, i32** %516, !tbaa !5
  %517 = getelementptr inbounds i32*, i32** %516, i64 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), i32** %517, !tbaa !5
  %518 = getelementptr inbounds i32*, i32** %517, i64 1
  store i32* %l_2659, i32** %518, !tbaa !5
  %519 = getelementptr inbounds i32*, i32** %518, i64 1
  store i32* %l_2659, i32** %519, !tbaa !5
  %520 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %520) #1
  %521 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %521) #1
  %522 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %523 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %522, i32 0, i64 0
  %524 = getelementptr inbounds [8 x i32], [8 x i32]* %523, i32 0, i64 1
  %525 = load i32, i32* %524, align 4, !tbaa !1
  %526 = add i32 %525, -1
  store i32 %526, i32* %524, align 4, !tbaa !1
  %527 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #1
  %528 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %528) #1
  %529 = bitcast [3 x [8 x i32*]]* %l_2664 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %529) #1
  %530 = bitcast i32** %l_2663 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %530) #1
  %531 = bitcast i32** %l_2662 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %531) #1
  %532 = bitcast i32** %l_2661 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %532) #1
  br label %533

; <label>:533                                     ; preds = %488
  %534 = load i16, i16* @g_900, align 2, !tbaa !10
  %535 = sext i16 %534 to i32
  %536 = sub nsw i32 %535, 1
  %537 = trunc i32 %536 to i16
  store i16 %537, i16* @g_900, align 2, !tbaa !10
  br label %484

; <label>:538                                     ; preds = %484
  %539 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %539) #1
  %540 = bitcast i32* %l_2679 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %540) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2660) #1
  br label %541

; <label>:541                                     ; preds = %538
  %542 = load i32, i32* @g_1766, align 4, !tbaa !1
  %543 = sub nsw i32 %542, 1
  store i32 %543, i32* @g_1766, align 4, !tbaa !1
  br label %478

; <label>:544                                     ; preds = %478
  %545 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %545) #1
  %546 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %546) #1
  %547 = bitcast [6 x [2 x i32]]* %l_2698 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %547) #1
  %548 = bitcast i32* %l_2659 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #1
  br label %1123

; <label>:549                                     ; preds = %375
  %550 = bitcast i8** %l_2732 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %550) #1
  store i8* @g_33, i8** %l_2732, align 8, !tbaa !5
  %551 = bitcast i32* %l_2733 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %551) #1
  store i32 1990606400, i32* %l_2733, align 4, !tbaa !1
  %552 = bitcast i32* %l_2734 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %552) #1
  store i32 -1, i32* %l_2734, align 4, !tbaa !1
  %553 = bitcast i32** %l_2735 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %553) #1
  store i32* @g_691, i32** %l_2735, align 8, !tbaa !5
  %554 = bitcast i32* %l_2756 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %554) #1
  store i32 1, i32* %l_2756, align 4, !tbaa !1
  %555 = bitcast i8*** %l_2772 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %555) #1
  store i8** null, i8*** %l_2772, align 8, !tbaa !5
  %556 = load i32, i32* %l_2654, align 4, !tbaa !1
  %557 = and i32 %556, 0
  %558 = sext i32 %557 to i64
  %559 = load i64, i64* @g_2717, align 8, !tbaa !7
  %560 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 1
  %561 = load i32, i32* %560, align 4, !tbaa !1
  %562 = load i32, i32* %l_2697, align 4, !tbaa !1
  %563 = sext i32 %562 to i64
  %564 = load i8*, i8** @g_612, align 8, !tbaa !5
  %565 = load i8, i8* %564, align 1, !tbaa !9
  %566 = load i32, i32* %l_2511, align 4, !tbaa !1
  %567 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %565, i32 %566)
  %568 = sext i8 %567 to i64
  %569 = and i64 2851008350, %568
  %570 = icmp sle i64 %563, %569
  %571 = zext i1 %570 to i32
  %572 = trunc i32 %571 to i16
  %573 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext -2, i16 signext %572)
  %574 = sext i16 %573 to i32
  %575 = or i32 %561, %574
  %576 = load i32, i32* %l_2654, align 4, !tbaa !1
  %577 = icmp ne i32 %575, %576
  %578 = zext i1 %577 to i32
  %579 = sext i32 %578 to i64
  %580 = icmp eq i64 %579, 0
  %581 = zext i1 %580 to i32
  %582 = trunc i32 %581 to i8
  %583 = load i8*, i8** %l_2732, align 8, !tbaa !5
  store i8 %582, i8* %583, align 1, !tbaa !9
  %584 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %582, i8 zeroext 63)
  %585 = zext i8 %584 to i32
  %586 = load i32, i32* %l_2733, align 4, !tbaa !1
  %587 = icmp sle i32 %585, %586
  %588 = zext i1 %587 to i32
  br i1 true, label %589, label %593

; <label>:589                                     ; preds = %549
  %590 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 1
  %591 = load i32, i32* %590, align 4, !tbaa !1
  %592 = icmp ne i32 %591, 0
  br label %593

; <label>:593                                     ; preds = %589, %549
  %594 = phi i1 [ false, %549 ], [ %592, %589 ]
  %595 = zext i1 %594 to i32
  %596 = sext i32 %595 to i64
  %597 = or i64 %596, -6
  %598 = icmp sle i64 %597, 76
  %599 = zext i1 %598 to i32
  %600 = trunc i32 %599 to i16
  %601 = load i32, i32* %l_2734, align 4, !tbaa !1
  %602 = trunc i32 %601 to i16
  %603 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %600, i16 zeroext %602)
  %604 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %603, i32 8)
  %605 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 3
  %606 = load i32, i32* %605, align 4, !tbaa !1
  %607 = trunc i32 %606 to i16
  %608 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %604, i16 zeroext %607)
  %609 = zext i16 %608 to i32
  %610 = load i32*, i32** @g_1414, align 8, !tbaa !5
  %611 = load i32, i32* %610, align 4, !tbaa !1
  %612 = or i32 %611, %609
  store i32 %612, i32* %610, align 4, !tbaa !1
  %613 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %614 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %613, i32 0, i64 0
  %615 = getelementptr inbounds [8 x i32], [8 x i32]* %614, i32 0, i64 1
  %616 = load i32, i32* %615, align 4, !tbaa !1
  %617 = call i32 @safe_mod_func_int32_t_s_s(i32 %612, i32 %616)
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %623

; <label>:619                                     ; preds = %593
  %620 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 1
  %621 = load i32, i32* %620, align 4, !tbaa !1
  %622 = icmp ne i32 %621, 0
  br label %623

; <label>:623                                     ; preds = %619, %593
  %624 = phi i1 [ false, %593 ], [ %622, %619 ]
  %625 = zext i1 %624 to i32
  %626 = load i8*, i8** @g_255, align 8, !tbaa !5
  %627 = load i8, i8* %626, align 1, !tbaa !9
  %628 = sext i8 %627 to i32
  %629 = icmp eq i32 %625, %628
  %630 = zext i1 %629 to i32
  %631 = sext i32 %630 to i64
  %632 = icmp uge i64 %559, %631
  %633 = zext i1 %632 to i32
  %634 = trunc i32 %633 to i8
  %635 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %634, i32 3)
  %636 = zext i8 %635 to i32
  %637 = load i32, i32* @g_691, align 4, !tbaa !1
  %638 = icmp ne i32 %636, %637
  %639 = zext i1 %638 to i32
  %640 = load i32*, i32** %l_2735, align 8, !tbaa !5
  store i32 %639, i32* %640, align 4, !tbaa !1
  %641 = load i32, i32* %l_2697, align 4, !tbaa !1
  %642 = icmp eq i32 %639, %641
  %643 = zext i1 %642 to i32
  %644 = trunc i32 %643 to i16
  %645 = load i16, i16* %l_2736, align 2, !tbaa !10
  %646 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %644, i16 signext %645)
  %647 = sext i16 %646 to i64
  %648 = icmp ugt i64 -1335322221393918264, %647
  %649 = zext i1 %648 to i32
  %650 = sext i32 %649 to i64
  %651 = call i64 @safe_add_func_int64_t_s_s(i64 %650, i64 -1580297046058804002)
  %652 = icmp ne i64 %651, 0
  br i1 %652, label %654, label %653

; <label>:653                                     ; preds = %623
  br label %654

; <label>:654                                     ; preds = %653, %623
  %655 = phi i1 [ true, %623 ], [ true, %653 ]
  %656 = zext i1 %655 to i32
  %657 = trunc i32 %656 to i8
  %658 = load i32, i32* %l_2733, align 4, !tbaa !1
  %659 = trunc i32 %658 to i8
  %660 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %657, i8 zeroext %659)
  %661 = zext i8 %660 to i16
  %662 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %661, i32 13)
  %663 = zext i16 %662 to i32
  %664 = load volatile i32**, i32*** @g_2522, align 8, !tbaa !5
  %665 = load i32*, i32** %664, align 8, !tbaa !5
  %666 = load i32, i32* %665, align 4, !tbaa !1
  %667 = call i32 @safe_div_func_int32_t_s_s(i32 %663, i32 %666)
  %668 = sext i32 %667 to i64
  %669 = call i64 @safe_mod_func_uint64_t_u_u(i64 %558, i64 %668)
  %670 = icmp ugt i64 %669, 2549023109
  br i1 %670, label %671, label %745

; <label>:671                                     ; preds = %654
  %672 = bitcast i32** %l_2743 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %672) #1
  store i32* null, i32** %l_2743, align 8, !tbaa !5
  %673 = bitcast i32** %l_2744 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %673) #1
  store i32* null, i32** %l_2744, align 8, !tbaa !5
  %674 = bitcast i32** %l_2745 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %674) #1
  store i32* %l_2654, i32** %l_2745, align 8, !tbaa !5
  %675 = bitcast i32** %l_2746 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %675) #1
  store i32* %l_2733, i32** %l_2746, align 8, !tbaa !5
  %676 = bitcast i32** %l_2747 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %676) #1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_133, i32 0, i64 6), i32** %l_2747, align 8, !tbaa !5
  %677 = bitcast i32** %l_2748 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %677) #1
  store i32* %l_2654, i32** %l_2748, align 8, !tbaa !5
  %678 = bitcast i32** %l_2749 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %678) #1
  store i32* %l_2734, i32** %l_2749, align 8, !tbaa !5
  %679 = bitcast [4 x i32*]* %l_2750 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %679) #1
  %680 = bitcast [8 x i32]* %l_2753 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %680) #1
  %681 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %681) #1
  store i32 0, i32* %i12, align 4, !tbaa !1
  br label %682

; <label>:682                                     ; preds = %689, %671
  %683 = load i32, i32* %i12, align 4, !tbaa !1
  %684 = icmp slt i32 %683, 4
  br i1 %684, label %685, label %692

; <label>:685                                     ; preds = %682
  %686 = load i32, i32* %i12, align 4, !tbaa !1
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_2750, i32 0, i64 %687
  store i32* %l_2541, i32** %688, align 8, !tbaa !5
  br label %689

; <label>:689                                     ; preds = %685
  %690 = load i32, i32* %i12, align 4, !tbaa !1
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %i12, align 4, !tbaa !1
  br label %682

; <label>:692                                     ; preds = %682
  store i32 0, i32* %i12, align 4, !tbaa !1
  br label %693

; <label>:693                                     ; preds = %700, %692
  %694 = load i32, i32* %i12, align 4, !tbaa !1
  %695 = icmp slt i32 %694, 8
  br i1 %695, label %696, label %703

; <label>:696                                     ; preds = %693
  %697 = load i32, i32* %i12, align 4, !tbaa !1
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [8 x i32], [8 x i32]* %l_2753, i32 0, i64 %698
  store i32 -318838686, i32* %699, align 4, !tbaa !1
  br label %700

; <label>:700                                     ; preds = %696
  %701 = load i32, i32* %i12, align 4, !tbaa !1
  %702 = add nsw i32 %701, 1
  store i32 %702, i32* %i12, align 4, !tbaa !1
  br label %693

; <label>:703                                     ; preds = %693
  store i16 -11, i16* @g_513, align 2, !tbaa !10
  br label %704

; <label>:704                                     ; preds = %720, %703
  %705 = load i16, i16* @g_513, align 2, !tbaa !10
  %706 = zext i16 %705 to i32
  %707 = icmp sle i32 %706, 40
  br i1 %707, label %708, label %725

; <label>:708                                     ; preds = %704
  %709 = bitcast i32** %l_2739 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %709) #1
  %710 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 1
  store i32* %710, i32** %l_2739, align 8, !tbaa !5
  %711 = load i32*, i32** %l_2739, align 8, !tbaa !5
  store i32* %711, i32** %l_2740, align 8, !tbaa !5
  %712 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %713 = load i32, i32* %712, align 4, !tbaa !1
  %714 = trunc i32 %713 to i8
  %715 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %714, i32 0)
  %716 = sext i8 %715 to i32
  %717 = load i32**, i32*** @g_393, align 8, !tbaa !5
  %718 = load i32*, i32** %717, align 8, !tbaa !5
  store i32 %716, i32* %718, align 4, !tbaa !1
  %719 = bitcast i32** %l_2739 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %719) #1
  br label %720

; <label>:720                                     ; preds = %708
  %721 = load i16, i16* @g_513, align 2, !tbaa !10
  %722 = trunc i16 %721 to i8
  %723 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %722, i8 zeroext 2)
  %724 = zext i8 %723 to i16
  store i16 %724, i16* @g_513, align 2, !tbaa !10
  br label %704

; <label>:725                                     ; preds = %704
  %726 = getelementptr inbounds [8 x i32], [8 x i32]* %l_2753, i32 0, i64 5
  %727 = load i32, i32* %726, align 4, !tbaa !1
  %728 = add i32 %727, 1
  store i32 %728, i32* %726, align 4, !tbaa !1
  %729 = getelementptr inbounds [4 x i8], [4 x i8]* %l_2757, i32 0, i64 1
  %730 = load i8, i8* %729, align 1, !tbaa !9
  %731 = add i8 %730, 1
  store i8 %731, i8* %729, align 1, !tbaa !9
  %732 = load i32, i32* %l_2733, align 4, !tbaa !1
  %733 = load i32*, i32** %l_2749, align 8, !tbaa !5
  store i32 %732, i32* %733, align 4, !tbaa !1
  %734 = load i32*, i32** @g_290, align 8, !tbaa !5
  store i32 %732, i32* %734, align 4, !tbaa !1
  %735 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %735) #1
  %736 = bitcast [8 x i32]* %l_2753 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %736) #1
  %737 = bitcast [4 x i32*]* %l_2750 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %737) #1
  %738 = bitcast i32** %l_2749 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %738) #1
  %739 = bitcast i32** %l_2748 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %739) #1
  %740 = bitcast i32** %l_2747 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %740) #1
  %741 = bitcast i32** %l_2746 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %741) #1
  %742 = bitcast i32** %l_2745 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %742) #1
  %743 = bitcast i32** %l_2744 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %743) #1
  %744 = bitcast i32** %l_2743 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %744) #1
  br label %1115

; <label>:745                                     ; preds = %654
  %746 = bitcast [6 x i32]* %l_2766 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %746) #1
  %747 = bitcast [8 x [10 x i32*]]* %l_2769 to i8*
  call void @llvm.lifetime.start(i64 640, i8* %747) #1
  %748 = getelementptr inbounds [8 x [10 x i32*]], [8 x [10 x i32*]]* %l_2769, i64 0, i64 0
  %749 = getelementptr inbounds [10 x i32*], [10 x i32*]* %748, i64 0, i64 0
  %750 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %751 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %750, i32 0, i64 0
  %752 = getelementptr inbounds [8 x i32], [8 x i32]* %751, i32 0, i64 1
  store i32* %752, i32** %749, !tbaa !5
  %753 = getelementptr inbounds i32*, i32** %749, i64 1
  store i32* @g_561, i32** %753, !tbaa !5
  %754 = getelementptr inbounds i32*, i32** %753, i64 1
  %755 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %756 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %755, i32 0, i64 2
  %757 = getelementptr inbounds [8 x i32], [8 x i32]* %756, i32 0, i64 2
  store i32* %757, i32** %754, !tbaa !5
  %758 = getelementptr inbounds i32*, i32** %754, i64 1
  %759 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %760 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %759, i32 0, i64 2
  %761 = getelementptr inbounds [8 x i32], [8 x i32]* %760, i32 0, i64 2
  store i32* %761, i32** %758, !tbaa !5
  %762 = getelementptr inbounds i32*, i32** %758, i64 1
  store i32* @g_561, i32** %762, !tbaa !5
  %763 = getelementptr inbounds i32*, i32** %762, i64 1
  %764 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %765 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %764, i32 0, i64 0
  %766 = getelementptr inbounds [8 x i32], [8 x i32]* %765, i32 0, i64 1
  store i32* %766, i32** %763, !tbaa !5
  %767 = getelementptr inbounds i32*, i32** %763, i64 1
  store i32* @g_691, i32** %767, !tbaa !5
  %768 = getelementptr inbounds i32*, i32** %767, i64 1
  store i32* @g_561, i32** %768, !tbaa !5
  %769 = getelementptr inbounds i32*, i32** %768, i64 1
  %770 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %771 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %770, i32 0, i64 2
  %772 = getelementptr inbounds [8 x i32], [8 x i32]* %771, i32 0, i64 2
  store i32* %772, i32** %769, !tbaa !5
  %773 = getelementptr inbounds i32*, i32** %769, i64 1
  store i32* @g_691, i32** %773, !tbaa !5
  %774 = getelementptr inbounds [10 x i32*], [10 x i32*]* %748, i64 1
  %775 = getelementptr inbounds [10 x i32*], [10 x i32*]* %774, i64 0, i64 0
  store i32* @g_627, i32** %775, !tbaa !5
  %776 = getelementptr inbounds i32*, i32** %775, i64 1
  store i32* @g_561, i32** %776, !tbaa !5
  %777 = getelementptr inbounds i32*, i32** %776, i64 1
  store i32* @g_561, i32** %777, !tbaa !5
  %778 = getelementptr inbounds i32*, i32** %777, i64 1
  store i32* @g_561, i32** %778, !tbaa !5
  %779 = getelementptr inbounds i32*, i32** %778, i64 1
  store i32* @g_561, i32** %779, !tbaa !5
  %780 = getelementptr inbounds i32*, i32** %779, i64 1
  %781 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %782 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %781, i32 0, i64 2
  %783 = getelementptr inbounds [8 x i32], [8 x i32]* %782, i32 0, i64 3
  store i32* %783, i32** %780, !tbaa !5
  %784 = getelementptr inbounds i32*, i32** %780, i64 1
  store i32* @g_561, i32** %784, !tbaa !5
  %785 = getelementptr inbounds i32*, i32** %784, i64 1
  store i32* @g_561, i32** %785, !tbaa !5
  %786 = getelementptr inbounds i32*, i32** %785, i64 1
  store i32* @g_561, i32** %786, !tbaa !5
  %787 = getelementptr inbounds i32*, i32** %786, i64 1
  store i32* @g_561, i32** %787, !tbaa !5
  %788 = getelementptr inbounds [10 x i32*], [10 x i32*]* %774, i64 1
  %789 = getelementptr inbounds [10 x i32*], [10 x i32*]* %788, i64 0, i64 0
  store i32* @g_627, i32** %789, !tbaa !5
  %790 = getelementptr inbounds i32*, i32** %789, i64 1
  store i32* @g_691, i32** %790, !tbaa !5
  %791 = getelementptr inbounds i32*, i32** %790, i64 1
  %792 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %793 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %792, i32 0, i64 2
  %794 = getelementptr inbounds [8 x i32], [8 x i32]* %793, i32 0, i64 2
  store i32* %794, i32** %791, !tbaa !5
  %795 = getelementptr inbounds i32*, i32** %791, i64 1
  store i32* @g_561, i32** %795, !tbaa !5
  %796 = getelementptr inbounds i32*, i32** %795, i64 1
  store i32* @g_691, i32** %796, !tbaa !5
  %797 = getelementptr inbounds i32*, i32** %796, i64 1
  %798 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %799 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %798, i32 0, i64 0
  %800 = getelementptr inbounds [8 x i32], [8 x i32]* %799, i32 0, i64 1
  store i32* %800, i32** %797, !tbaa !5
  %801 = getelementptr inbounds i32*, i32** %797, i64 1
  store i32* @g_561, i32** %801, !tbaa !5
  %802 = getelementptr inbounds i32*, i32** %801, i64 1
  %803 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %804 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %803, i32 0, i64 2
  %805 = getelementptr inbounds [8 x i32], [8 x i32]* %804, i32 0, i64 2
  store i32* %805, i32** %802, !tbaa !5
  %806 = getelementptr inbounds i32*, i32** %802, i64 1
  %807 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %808 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %807, i32 0, i64 2
  %809 = getelementptr inbounds [8 x i32], [8 x i32]* %808, i32 0, i64 2
  store i32* %809, i32** %806, !tbaa !5
  %810 = getelementptr inbounds i32*, i32** %806, i64 1
  store i32* @g_561, i32** %810, !tbaa !5
  %811 = getelementptr inbounds [10 x i32*], [10 x i32*]* %788, i64 1
  %812 = getelementptr inbounds [10 x i32*], [10 x i32*]* %811, i64 0, i64 0
  %813 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %814 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %813, i32 0, i64 0
  %815 = getelementptr inbounds [8 x i32], [8 x i32]* %814, i32 0, i64 1
  store i32* %815, i32** %812, !tbaa !5
  %816 = getelementptr inbounds i32*, i32** %812, i64 1
  store i32* @g_561, i32** %816, !tbaa !5
  %817 = getelementptr inbounds i32*, i32** %816, i64 1
  %818 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %819 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %818, i32 0, i64 2
  %820 = getelementptr inbounds [8 x i32], [8 x i32]* %819, i32 0, i64 2
  store i32* %820, i32** %817, !tbaa !5
  %821 = getelementptr inbounds i32*, i32** %817, i64 1
  %822 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %823 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %822, i32 0, i64 2
  %824 = getelementptr inbounds [8 x i32], [8 x i32]* %823, i32 0, i64 2
  store i32* %824, i32** %821, !tbaa !5
  %825 = getelementptr inbounds i32*, i32** %821, i64 1
  store i32* @g_561, i32** %825, !tbaa !5
  %826 = getelementptr inbounds i32*, i32** %825, i64 1
  %827 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %828 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %827, i32 0, i64 0
  %829 = getelementptr inbounds [8 x i32], [8 x i32]* %828, i32 0, i64 1
  store i32* %829, i32** %826, !tbaa !5
  %830 = getelementptr inbounds i32*, i32** %826, i64 1
  store i32* @g_691, i32** %830, !tbaa !5
  %831 = getelementptr inbounds i32*, i32** %830, i64 1
  store i32* @g_561, i32** %831, !tbaa !5
  %832 = getelementptr inbounds i32*, i32** %831, i64 1
  %833 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %834 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %833, i32 0, i64 2
  %835 = getelementptr inbounds [8 x i32], [8 x i32]* %834, i32 0, i64 2
  store i32* %835, i32** %832, !tbaa !5
  %836 = getelementptr inbounds i32*, i32** %832, i64 1
  store i32* @g_691, i32** %836, !tbaa !5
  %837 = getelementptr inbounds [10 x i32*], [10 x i32*]* %811, i64 1
  %838 = getelementptr inbounds [10 x i32*], [10 x i32*]* %837, i64 0, i64 0
  store i32* @g_627, i32** %838, !tbaa !5
  %839 = getelementptr inbounds i32*, i32** %838, i64 1
  store i32* @g_561, i32** %839, !tbaa !5
  %840 = getelementptr inbounds i32*, i32** %839, i64 1
  store i32* @g_561, i32** %840, !tbaa !5
  %841 = getelementptr inbounds i32*, i32** %840, i64 1
  store i32* @g_561, i32** %841, !tbaa !5
  %842 = getelementptr inbounds i32*, i32** %841, i64 1
  store i32* @g_561, i32** %842, !tbaa !5
  %843 = getelementptr inbounds i32*, i32** %842, i64 1
  %844 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %845 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %844, i32 0, i64 2
  %846 = getelementptr inbounds [8 x i32], [8 x i32]* %845, i32 0, i64 3
  store i32* %846, i32** %843, !tbaa !5
  %847 = getelementptr inbounds i32*, i32** %843, i64 1
  store i32* @g_561, i32** %847, !tbaa !5
  %848 = getelementptr inbounds i32*, i32** %847, i64 1
  store i32* @g_561, i32** %848, !tbaa !5
  %849 = getelementptr inbounds i32*, i32** %848, i64 1
  store i32* @g_561, i32** %849, !tbaa !5
  %850 = getelementptr inbounds i32*, i32** %849, i64 1
  store i32* @g_561, i32** %850, !tbaa !5
  %851 = getelementptr inbounds [10 x i32*], [10 x i32*]* %837, i64 1
  %852 = getelementptr inbounds [10 x i32*], [10 x i32*]* %851, i64 0, i64 0
  store i32* @g_627, i32** %852, !tbaa !5
  %853 = getelementptr inbounds i32*, i32** %852, i64 1
  store i32* @g_691, i32** %853, !tbaa !5
  %854 = getelementptr inbounds i32*, i32** %853, i64 1
  %855 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %856 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %855, i32 0, i64 2
  %857 = getelementptr inbounds [8 x i32], [8 x i32]* %856, i32 0, i64 2
  store i32* %857, i32** %854, !tbaa !5
  %858 = getelementptr inbounds i32*, i32** %854, i64 1
  store i32* @g_561, i32** %858, !tbaa !5
  %859 = getelementptr inbounds i32*, i32** %858, i64 1
  store i32* @g_691, i32** %859, !tbaa !5
  %860 = getelementptr inbounds i32*, i32** %859, i64 1
  %861 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %862 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %861, i32 0, i64 0
  %863 = getelementptr inbounds [8 x i32], [8 x i32]* %862, i32 0, i64 1
  store i32* %863, i32** %860, !tbaa !5
  %864 = getelementptr inbounds i32*, i32** %860, i64 1
  store i32* @g_561, i32** %864, !tbaa !5
  %865 = getelementptr inbounds i32*, i32** %864, i64 1
  %866 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %867 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %866, i32 0, i64 2
  %868 = getelementptr inbounds [8 x i32], [8 x i32]* %867, i32 0, i64 2
  store i32* %868, i32** %865, !tbaa !5
  %869 = getelementptr inbounds i32*, i32** %865, i64 1
  %870 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %871 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %870, i32 0, i64 2
  %872 = getelementptr inbounds [8 x i32], [8 x i32]* %871, i32 0, i64 2
  store i32* %872, i32** %869, !tbaa !5
  %873 = getelementptr inbounds i32*, i32** %869, i64 1
  store i32* @g_561, i32** %873, !tbaa !5
  %874 = getelementptr inbounds [10 x i32*], [10 x i32*]* %851, i64 1
  %875 = getelementptr inbounds [10 x i32*], [10 x i32*]* %874, i64 0, i64 0
  %876 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %877 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %876, i32 0, i64 0
  %878 = getelementptr inbounds [8 x i32], [8 x i32]* %877, i32 0, i64 1
  store i32* %878, i32** %875, !tbaa !5
  %879 = getelementptr inbounds i32*, i32** %875, i64 1
  store i32* @g_561, i32** %879, !tbaa !5
  %880 = getelementptr inbounds i32*, i32** %879, i64 1
  %881 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %882 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %881, i32 0, i64 2
  %883 = getelementptr inbounds [8 x i32], [8 x i32]* %882, i32 0, i64 2
  store i32* %883, i32** %880, !tbaa !5
  %884 = getelementptr inbounds i32*, i32** %880, i64 1
  %885 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %886 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %885, i32 0, i64 2
  %887 = getelementptr inbounds [8 x i32], [8 x i32]* %886, i32 0, i64 2
  store i32* %887, i32** %884, !tbaa !5
  %888 = getelementptr inbounds i32*, i32** %884, i64 1
  store i32* @g_561, i32** %888, !tbaa !5
  %889 = getelementptr inbounds i32*, i32** %888, i64 1
  %890 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %891 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %890, i32 0, i64 0
  %892 = getelementptr inbounds [8 x i32], [8 x i32]* %891, i32 0, i64 1
  store i32* %892, i32** %889, !tbaa !5
  %893 = getelementptr inbounds i32*, i32** %889, i64 1
  store i32* @g_691, i32** %893, !tbaa !5
  %894 = getelementptr inbounds i32*, i32** %893, i64 1
  store i32* @g_561, i32** %894, !tbaa !5
  %895 = getelementptr inbounds i32*, i32** %894, i64 1
  %896 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 4
  %897 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %896, i32 0, i64 2
  %898 = getelementptr inbounds [8 x i32], [8 x i32]* %897, i32 0, i64 2
  store i32* %898, i32** %895, !tbaa !5
  %899 = getelementptr inbounds i32*, i32** %895, i64 1
  store i32* @g_691, i32** %899, !tbaa !5
  %900 = getelementptr inbounds [10 x i32*], [10 x i32*]* %874, i64 1
  %901 = getelementptr inbounds [10 x i32*], [10 x i32*]* %900, i64 0, i64 0
  store i32* @g_627, i32** %901, !tbaa !5
  %902 = getelementptr inbounds i32*, i32** %901, i64 1
  store i32* @g_561, i32** %902, !tbaa !5
  %903 = getelementptr inbounds i32*, i32** %902, i64 1
  store i32* @g_561, i32** %903, !tbaa !5
  %904 = getelementptr inbounds i32*, i32** %903, i64 1
  store i32* @g_561, i32** %904, !tbaa !5
  %905 = getelementptr inbounds i32*, i32** %904, i64 1
  store i32* @g_561, i32** %905, !tbaa !5
  %906 = getelementptr inbounds i32*, i32** %905, i64 1
  %907 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 2
  %908 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %907, i32 0, i64 2
  %909 = getelementptr inbounds [8 x i32], [8 x i32]* %908, i32 0, i64 3
  store i32* %909, i32** %906, !tbaa !5
  %910 = getelementptr inbounds i32*, i32** %906, i64 1
  store i32* @g_561, i32** %910, !tbaa !5
  %911 = getelementptr inbounds i32*, i32** %910, i64 1
  store i32* @g_561, i32** %911, !tbaa !5
  %912 = getelementptr inbounds i32*, i32** %911, i64 1
  store i32* @g_561, i32** %912, !tbaa !5
  %913 = getelementptr inbounds i32*, i32** %912, i64 1
  store i32* @g_561, i32** %913, !tbaa !5
  %914 = bitcast i8*** %l_2770 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %914) #1
  store i8** @g_255, i8*** %l_2770, align 8, !tbaa !5
  %915 = bitcast [2 x [6 x i8***]]* %l_2771 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %915) #1
  %916 = getelementptr inbounds [2 x [6 x i8***]], [2 x [6 x i8***]]* %l_2771, i64 0, i64 0
  %917 = getelementptr inbounds [6 x i8***], [6 x i8***]* %916, i64 0, i64 0
  store i8*** %l_2770, i8**** %917, !tbaa !5
  %918 = getelementptr inbounds i8***, i8**** %917, i64 1
  store i8*** @g_1439, i8**** %918, !tbaa !5
  %919 = getelementptr inbounds i8***, i8**** %918, i64 1
  store i8*** @g_1439, i8**** %919, !tbaa !5
  %920 = getelementptr inbounds i8***, i8**** %919, i64 1
  store i8*** %l_2770, i8**** %920, !tbaa !5
  %921 = getelementptr inbounds i8***, i8**** %920, i64 1
  store i8*** @g_1439, i8**** %921, !tbaa !5
  %922 = getelementptr inbounds i8***, i8**** %921, i64 1
  store i8*** @g_1439, i8**** %922, !tbaa !5
  %923 = getelementptr inbounds [6 x i8***], [6 x i8***]* %916, i64 1
  %924 = getelementptr inbounds [6 x i8***], [6 x i8***]* %923, i64 0, i64 0
  store i8*** %l_2770, i8**** %924, !tbaa !5
  %925 = getelementptr inbounds i8***, i8**** %924, i64 1
  store i8*** @g_1439, i8**** %925, !tbaa !5
  %926 = getelementptr inbounds i8***, i8**** %925, i64 1
  store i8*** @g_1439, i8**** %926, !tbaa !5
  %927 = getelementptr inbounds i8***, i8**** %926, i64 1
  store i8*** %l_2770, i8**** %927, !tbaa !5
  %928 = getelementptr inbounds i8***, i8**** %927, i64 1
  store i8*** @g_1439, i8**** %928, !tbaa !5
  %929 = getelementptr inbounds i8***, i8**** %928, i64 1
  store i8*** @g_1439, i8**** %929, !tbaa !5
  %930 = bitcast i8** %l_2786 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %930) #1
  store i8* @g_2506, i8** %l_2786, align 8, !tbaa !5
  %931 = bitcast i32**** %l_2802 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %931) #1
  store i32*** @g_916, i32**** %l_2802, align 8, !tbaa !5
  %932 = bitcast i32* %l_2803 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %932) #1
  store i32 -1, i32* %l_2803, align 4, !tbaa !1
  %933 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %933) #1
  %934 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %934) #1
  store i32 0, i32* %i13, align 4, !tbaa !1
  br label %935

; <label>:935                                     ; preds = %942, %745
  %936 = load i32, i32* %i13, align 4, !tbaa !1
  %937 = icmp slt i32 %936, 6
  br i1 %937, label %938, label %945

; <label>:938                                     ; preds = %935
  %939 = load i32, i32* %i13, align 4, !tbaa !1
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds [6 x i32], [6 x i32]* %l_2766, i32 0, i64 %940
  store i32 4, i32* %941, align 4, !tbaa !1
  br label %942

; <label>:942                                     ; preds = %938
  %943 = load i32, i32* %i13, align 4, !tbaa !1
  %944 = add nsw i32 %943, 1
  store i32 %944, i32* %i13, align 4, !tbaa !1
  br label %935

; <label>:945                                     ; preds = %935
  %946 = getelementptr inbounds [6 x i32], [6 x i32]* %l_2766, i32 0, i64 0
  %947 = load i32, i32* %946, align 4, !tbaa !1
  %948 = load i32, i32* %l_2511, align 4, !tbaa !1
  %949 = xor i32 %948, %947
  store i32 %949, i32* %l_2511, align 4, !tbaa !1
  %950 = sext i32 %949 to i64
  %951 = load i32*, i32** %l_2735, align 8, !tbaa !5
  %952 = getelementptr inbounds [8 x [10 x i32*]], [8 x [10 x i32*]]* %l_2769, i32 0, i64 2
  %953 = getelementptr inbounds [10 x i32*], [10 x i32*]* %952, i32 0, i64 0
  %954 = load i32*, i32** %953, align 8, !tbaa !5
  %955 = icmp eq i32* %951, %954
  %956 = zext i1 %955 to i32
  %957 = load i8**, i8*** %l_2770, align 8, !tbaa !5
  store i8** %957, i8*** %l_2772, align 8, !tbaa !5
  %958 = load i8**, i8*** %l_2773, align 8, !tbaa !5
  %959 = icmp eq i8** %957, %958
  %960 = zext i1 %959 to i32
  %961 = sext i32 %960 to i64
  %962 = load i32, i32* %l_2734, align 4, !tbaa !1
  %963 = load i32*, i32** %l_2735, align 8, !tbaa !5
  store i32 %962, i32* %963, align 4, !tbaa !1
  %964 = load i32, i32* %l_2783, align 4, !tbaa !1
  %965 = xor i32 %964, %962
  store i32 %965, i32* %l_2783, align 4, !tbaa !1
  %966 = xor i32 %965, -1
  %967 = icmp ne i32 %966, 0
  br i1 %967, label %968, label %972

; <label>:968                                     ; preds = %945
  %969 = load i32*, i32** @g_555, align 8, !tbaa !5
  %970 = load i32, i32* %969, align 4, !tbaa !1
  %971 = icmp ne i32 %970, 0
  br label %972

; <label>:972                                     ; preds = %968, %945
  %973 = phi i1 [ false, %945 ], [ %971, %968 ]
  %974 = zext i1 %973 to i32
  %975 = load i8*, i8** @g_2407, align 8, !tbaa !5
  %976 = load i8, i8* %975, align 1, !tbaa !9
  %977 = zext i8 %976 to i64
  %978 = xor i64 -4, %977
  %979 = trunc i64 %978 to i16
  %980 = getelementptr inbounds [6 x i32], [6 x i32]* %l_2766, i32 0, i64 0
  %981 = load i32, i32* %980, align 4, !tbaa !1
  %982 = trunc i32 %981 to i16
  %983 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %979, i16 zeroext %982)
  %984 = zext i16 %983 to i32
  %985 = call i32 @safe_add_func_uint32_t_u_u(i32 %974, i32 %984)
  %986 = trunc i32 %985 to i16
  %987 = load i64, i64* @g_479, align 8, !tbaa !7
  %988 = trunc i64 %987 to i16
  %989 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %986, i16 signext %988)
  %990 = getelementptr inbounds [6 x i32], [6 x i32]* %l_2766, i32 0, i64 2
  %991 = load i32, i32* %990, align 4, !tbaa !1
  %992 = trunc i32 %991 to i8
  %993 = load i16, i16* %l_2736, align 2, !tbaa !10
  %994 = zext i16 %993 to i32
  %995 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %992, i32 %994)
  %996 = zext i8 %995 to i64
  %997 = xor i64 %996, 0
  %998 = icmp ne i64 %961, %997
  %999 = zext i1 %998 to i32
  %1000 = load i8*, i8** %l_2786, align 8, !tbaa !5
  %1001 = load i8, i8* %1000, align 1, !tbaa !9
  %1002 = zext i8 %1001 to i32
  %1003 = or i32 %1002, %999
  %1004 = trunc i32 %1003 to i8
  store i8 %1004, i8* %1000, align 1, !tbaa !9
  %1005 = zext i8 %1004 to i32
  %1006 = getelementptr inbounds [9 x [3 x [8 x i32]]], [9 x [3 x [8 x i32]]]* %l_2665, i32 0, i64 7
  %1007 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %1006, i32 0, i64 1
  %1008 = getelementptr inbounds [8 x i32], [8 x i32]* %1007, i32 0, i64 1
  %1009 = load i32, i32* %1008, align 4, !tbaa !1
  %1010 = or i32 %1005, %1009
  %1011 = load i32*, i32** @g_1414, align 8, !tbaa !5
  store i32 %1010, i32* %1011, align 4, !tbaa !1
  %1012 = call i32 @safe_add_func_int32_t_s_s(i32 %1010, i32 -3)
  %1013 = sext i32 %1012 to i64
  %1014 = call i64 @safe_div_func_uint64_t_u_u(i64 %950, i64 %1013)
  %1015 = load i8, i8* %l_18, align 1, !tbaa !9
  %1016 = zext i8 %1015 to i32
  %1017 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 5, i32 %1016)
  %1018 = zext i8 %1017 to i64
  %1019 = icmp slt i64 %1018, 0
  %1020 = zext i1 %1019 to i32
  %1021 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1022 = load i32, i32* %1021, align 4, !tbaa !1
  %1023 = icmp eq i32 %1020, %1022
  %1024 = zext i1 %1023 to i32
  %1025 = trunc i32 %1024 to i8
  %1026 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %1025, i32 2)
  %1027 = sext i8 %1026 to i32
  %1028 = load i32**, i32*** @g_1767, align 8, !tbaa !5
  %1029 = load i32*, i32** %1028, align 8, !tbaa !5
  store i32 %1027, i32* %1029, align 4, !tbaa !1
  %1030 = load volatile i32**, i32*** @g_560, align 8, !tbaa !5
  %1031 = load i32*, i32** %1030, align 8, !tbaa !5
  %1032 = load volatile i32**, i32*** @g_2789, align 8, !tbaa !5
  store i32* %1031, i32** %1032, align 8, !tbaa !5
  %1033 = load i8, i8* %l_2751, align 1, !tbaa !9
  %1034 = sext i8 %1033 to i32
  %1035 = getelementptr inbounds [5 x [5 x [2 x i16*****]]], [5 x [5 x [2 x i16*****]]]* %l_2792, i32 0, i64 2
  %1036 = getelementptr inbounds [5 x [2 x i16*****]], [5 x [2 x i16*****]]* %1035, i32 0, i64 2
  %1037 = getelementptr inbounds [2 x i16*****], [2 x i16*****]* %1036, i32 0, i64 0
  %1038 = load i16*****, i16****** %1037, align 8, !tbaa !5
  store i16***** %1038, i16****** @g_2795, align 8, !tbaa !5
  %1039 = icmp ne i16***** %1038, getelementptr inbounds ([6 x [6 x i16****]], [6 x [6 x i16****]]* @g_2796, i32 0, i64 3, i64 0)
  %1040 = zext i1 %1039 to i32
  %1041 = xor i32 %1034, %1040
  %1042 = trunc i32 %1041 to i16
  %1043 = load i32, i32* %l_2541, align 4, !tbaa !1
  %1044 = load i32, i32* %l_2733, align 4, !tbaa !1
  %1045 = load volatile i32***, i32**** @g_915, align 8, !tbaa !5
  %1046 = load i32**, i32*** %1045, align 8, !tbaa !5
  %1047 = load i32***, i32**** %l_2802, align 8, !tbaa !5
  store i32** %1046, i32*** %1047, align 8, !tbaa !5
  %1048 = icmp eq i32** %1046, null
  %1049 = zext i1 %1048 to i32
  %1050 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1051 = load i32, i32* %1050, align 4, !tbaa !1
  %1052 = getelementptr inbounds [6 x i32], [6 x i32]* %l_2766, i32 0, i64 4
  %1053 = load i32, i32* %1052, align 4, !tbaa !1
  %1054 = xor i32 %1051, %1053
  %1055 = load i8**, i8*** @g_611, align 8, !tbaa !5
  %1056 = load i8*, i8** %1055, align 8, !tbaa !5
  %1057 = load i8, i8* %1056, align 1, !tbaa !9
  %1058 = sext i8 %1057 to i32
  %1059 = icmp ne i32 %1054, %1058
  %1060 = zext i1 %1059 to i32
  %1061 = load i8*, i8** @g_2407, align 8, !tbaa !5
  %1062 = load i8, i8* %1061, align 1, !tbaa !9
  %1063 = zext i8 %1062 to i32
  %1064 = and i32 %1060, %1063
  %1065 = getelementptr inbounds [6 x i32], [6 x i32]* %l_2766, i32 0, i64 0
  %1066 = load i32, i32* %1065, align 4, !tbaa !1
  %1067 = and i32 %1064, %1066
  %1068 = sext i32 %1067 to i64
  %1069 = icmp ne i64 %1068, 2457526165
  %1070 = zext i1 %1069 to i32
  %1071 = icmp eq i32 %1044, %1070
  %1072 = zext i1 %1071 to i32
  %1073 = trunc i32 %1072 to i16
  %1074 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1075 = load i32, i32* %1074, align 4, !tbaa !1
  %1076 = trunc i32 %1075 to i16
  %1077 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %1073, i16 zeroext %1076)
  %1078 = zext i16 %1077 to i32
  %1079 = icmp sgt i32 %1043, %1078
  %1080 = zext i1 %1079 to i32
  %1081 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %1042, i32 %1080)
  %1082 = sext i16 %1081 to i64
  %1083 = load i64*, i64** %l_2653, align 8, !tbaa !5
  store i64 %1082, i64* %1083, align 8, !tbaa !7
  %1084 = load i32, i32* %l_2734, align 4, !tbaa !1
  %1085 = sext i32 %1084 to i64
  %1086 = icmp sle i64 %1082, %1085
  %1087 = zext i1 %1086 to i32
  %1088 = load i32, i32* %l_2803, align 4, !tbaa !1
  %1089 = and i32 %1087, %1088
  %1090 = zext i32 %1089 to i64
  %1091 = load i64*, i64** @g_2587, align 8, !tbaa !5
  %1092 = load i64, i64* %1091, align 8, !tbaa !7
  %1093 = icmp ne i64 %1090, %1092
  %1094 = zext i1 %1093 to i32
  %1095 = sext i32 %1094 to i64
  %1096 = icmp ne i64 156, %1095
  br i1 %1096, label %1101, label %1097

; <label>:1097                                    ; preds = %972
  %1098 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1099 = load i32, i32* %1098, align 4, !tbaa !1
  %1100 = icmp ne i32 %1099, 0
  br label %1101

; <label>:1101                                    ; preds = %1097, %972
  %1102 = phi i1 [ true, %972 ], [ %1100, %1097 ]
  %1103 = zext i1 %1102 to i32
  %1104 = load i32**, i32*** @g_1767, align 8, !tbaa !5
  %1105 = load i32*, i32** %1104, align 8, !tbaa !5
  store i32 %1103, i32* %1105, align 4, !tbaa !1
  %1106 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1106) #1
  %1107 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1107) #1
  %1108 = bitcast i32* %l_2803 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1108) #1
  %1109 = bitcast i32**** %l_2802 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1109) #1
  %1110 = bitcast i8** %l_2786 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1110) #1
  %1111 = bitcast [2 x [6 x i8***]]* %l_2771 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %1111) #1
  %1112 = bitcast i8*** %l_2770 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1112) #1
  %1113 = bitcast [8 x [10 x i32*]]* %l_2769 to i8*
  call void @llvm.lifetime.end(i64 640, i8* %1113) #1
  %1114 = bitcast [6 x i32]* %l_2766 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1114) #1
  br label %1115

; <label>:1115                                    ; preds = %1101, %725
  %1116 = load i32, i32* %l_2654, align 4, !tbaa !1
  store i32 %1116, i32* %1
  store i32 1, i32* %2
  %1117 = bitcast i8*** %l_2772 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1117) #1
  %1118 = bitcast i32* %l_2756 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1118) #1
  %1119 = bitcast i32** %l_2735 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1119) #1
  %1120 = bitcast i32* %l_2734 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1120) #1
  %1121 = bitcast i32* %l_2733 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1121) #1
  %1122 = bitcast i8** %l_2732 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1122) #1
  br label %1127

; <label>:1123                                    ; preds = %544
  %1124 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1125 = load i32, i32* %1124, align 4, !tbaa !1
  %1126 = load i32*, i32** %l_2740, align 8, !tbaa !5
  store i32 %1125, i32* %1126, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %1127

; <label>:1127                                    ; preds = %1123, %1115
  %1128 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1128) #1
  %1129 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1129) #1
  %1130 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1130) #1
  %1131 = bitcast [5 x [5 x [2 x i16*****]]]* %l_2792 to i8*
  call void @llvm.lifetime.end(i64 400, i8* %1131) #1
  %1132 = bitcast i16***** %l_2793 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1132) #1
  %1133 = bitcast i16**** %l_2794 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1133) #1
  %1134 = bitcast i32* %l_2787 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1134) #1
  %1135 = bitcast i32* %l_2783 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1135) #1
  %1136 = bitcast [4 x i32]* %l_2752 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1136) #1
  %1137 = bitcast i16* %l_2736 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1137) #1
  %1138 = bitcast i32* %l_2697 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1138) #1
  %1139 = bitcast [9 x [3 x [8 x i32]]]* %l_2665 to i8*
  call void @llvm.lifetime.end(i64 864, i8* %1139) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %2549 [
    i32 0, label %1140
  ]

; <label>:1140                                    ; preds = %1127
  br label %2441

; <label>:1141                                    ; preds = %370
  %1142 = bitcast i32* %l_2811 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1142) #1
  store i32 1, i32* %l_2811, align 4, !tbaa !1
  %1143 = bitcast i16** %l_2839 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1143) #1
  store i16* @g_1740, i16** %l_2839, align 8, !tbaa !5
  %1144 = bitcast i8** %l_2841 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1144) #1
  store i8* @g_2506, i8** %l_2841, align 8, !tbaa !5
  %1145 = bitcast i32* %l_2868 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1145) #1
  store i32 9, i32* %l_2868, align 4, !tbaa !1
  %1146 = bitcast i32* %l_2905 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1146) #1
  store i32 181615837, i32* %l_2905, align 4, !tbaa !1
  %1147 = bitcast [3 x i32]* %l_2906 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %1147) #1
  %1148 = bitcast [2 x [7 x [6 x i32]]]* %l_2948 to i8*
  call void @llvm.lifetime.start(i64 336, i8* %1148) #1
  %1149 = bitcast [2 x [7 x [6 x i32]]]* %l_2948 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1149, i8* bitcast ([2 x [7 x [6 x i32]]]* @func_1.l_2948 to i8*), i64 336, i32 16, i1 false)
  %1150 = bitcast i16**** %l_2952 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1150) #1
  store i16*** @g_2236, i16**** %l_2952, align 8, !tbaa !5
  %1151 = bitcast i16***** %l_2951 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1151) #1
  store i16**** %l_2952, i16***** %l_2951, align 8, !tbaa !5
  %1152 = bitcast i16****** %l_2950 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1152) #1
  store i16***** %l_2951, i16****** %l_2950, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2982) #1
  store i8 1, i8* %l_2982, align 1, !tbaa !9
  %1153 = bitcast i32**** %l_2986 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1153) #1
  store i32*** @g_393, i32**** %l_2986, align 8, !tbaa !5
  %1154 = bitcast i16* %l_2987 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1154) #1
  store i16 -14852, i16* %l_2987, align 2, !tbaa !10
  %1155 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1155) #1
  %1156 = bitcast i32* %j16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1156) #1
  %1157 = bitcast i32* %k17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1157) #1
  store i32 0, i32* %i15, align 4, !tbaa !1
  br label %1158

; <label>:1158                                    ; preds = %1165, %1141
  %1159 = load i32, i32* %i15, align 4, !tbaa !1
  %1160 = icmp slt i32 %1159, 3
  br i1 %1160, label %1161, label %1168

; <label>:1161                                    ; preds = %1158
  %1162 = load i32, i32* %i15, align 4, !tbaa !1
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds [3 x i32], [3 x i32]* %l_2906, i32 0, i64 %1163
  store i32 -23070568, i32* %1164, align 4, !tbaa !1
  br label %1165

; <label>:1165                                    ; preds = %1161
  %1166 = load i32, i32* %i15, align 4, !tbaa !1
  %1167 = add nsw i32 %1166, 1
  store i32 %1167, i32* %i15, align 4, !tbaa !1
  br label %1158

; <label>:1168                                    ; preds = %1158
  br label %1169

; <label>:1169                                    ; preds = %1574, %1168
  %1170 = load volatile i32**, i32*** @g_1885, align 8, !tbaa !5
  %1171 = load i32*, i32** %1170, align 8, !tbaa !5
  %1172 = load i32**, i32*** @g_393, align 8, !tbaa !5
  store i32* %1171, i32** %1172, align 8, !tbaa !5
  store i8 21, i8* %l_2751, align 1, !tbaa !9
  br label %1173

; <label>:1173                                    ; preds = %1581, %1169
  %1174 = load i8, i8* %l_2751, align 1, !tbaa !9
  %1175 = sext i8 %1174 to i32
  %1176 = icmp ne i32 %1175, -19
  br i1 %1176, label %1177, label %1586

; <label>:1177                                    ; preds = %1173
  %1178 = bitcast [1 x [1 x [4 x i32]]]* %l_2810 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1178) #1
  %1179 = bitcast [1 x [1 x [4 x i32]]]* %l_2810 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1179, i8* bitcast ([1 x [1 x [4 x i32]]]* @func_1.l_2810 to i8*), i64 16, i32 16, i1 false)
  %1180 = bitcast i32* %l_2812 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1180) #1
  store i32 -1160597197, i32* %l_2812, align 4, !tbaa !1
  %1181 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1181) #1
  %1182 = bitcast i32* %j19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1182) #1
  %1183 = bitcast i32* %k20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1183) #1
  store i32 0, i32* %l_2511, align 4, !tbaa !1
  br label %1184

; <label>:1184                                    ; preds = %1497, %1177
  %1185 = load i32, i32* %l_2511, align 4, !tbaa !1
  %1186 = icmp sle i32 %1185, 2
  br i1 %1186, label %1187, label %1500

; <label>:1187                                    ; preds = %1184
  %1188 = bitcast i32** %l_2806 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1188) #1
  store i32* @g_2293, i32** %l_2806, align 8, !tbaa !5
  %1189 = bitcast i32** %l_2807 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1189) #1
  %1190 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 4
  store i32* %1190, i32** %l_2807, align 8, !tbaa !5
  %1191 = bitcast i32** %l_2808 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1191) #1
  store i32* @g_1766, i32** %l_2808, align 8, !tbaa !5
  %1192 = bitcast [8 x i32*]* %l_2809 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1192) #1
  %1193 = getelementptr inbounds [8 x i32*], [8 x i32*]* %l_2809, i64 0, i64 0
  store i32* @g_1766, i32** %1193, !tbaa !5
  %1194 = getelementptr inbounds i32*, i32** %1193, i64 1
  store i32* %l_2654, i32** %1194, !tbaa !5
  %1195 = getelementptr inbounds i32*, i32** %1194, i64 1
  store i32* @g_1766, i32** %1195, !tbaa !5
  %1196 = getelementptr inbounds i32*, i32** %1195, i64 1
  store i32* @g_1766, i32** %1196, !tbaa !5
  %1197 = getelementptr inbounds i32*, i32** %1196, i64 1
  store i32* %l_2654, i32** %1197, !tbaa !5
  %1198 = getelementptr inbounds i32*, i32** %1197, i64 1
  store i32* @g_1766, i32** %1198, !tbaa !5
  %1199 = getelementptr inbounds i32*, i32** %1198, i64 1
  store i32* @g_1766, i32** %1199, !tbaa !5
  %1200 = getelementptr inbounds i32*, i32** %1199, i64 1
  store i32* %l_2654, i32** %1200, !tbaa !5
  %1201 = bitcast i16** %l_2840 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1201) #1
  store i16* @g_1514, i16** %l_2840, align 8, !tbaa !5
  %1202 = bitcast i64* %l_2849 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1202) #1
  store i64 -8246180264791198079, i64* %l_2849, align 8, !tbaa !7
  %1203 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1203) #1
  %1204 = load i32, i32* %l_2813, align 4, !tbaa !1
  %1205 = add i32 %1204, -1
  store i32 %1205, i32* %l_2813, align 4, !tbaa !1
  store i8 0, i8* @g_2506, align 1, !tbaa !9
  br label %1206

; <label>:1206                                    ; preds = %1274, %1187
  %1207 = load i8, i8* @g_2506, align 1, !tbaa !9
  %1208 = zext i8 %1207 to i32
  %1209 = icmp sle i32 %1208, 4
  br i1 %1209, label %1210, label %1279

; <label>:1210                                    ; preds = %1206
  %1211 = bitcast i32** %l_2816 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1211) #1
  store i32* null, i32** %l_2816, align 8, !tbaa !5
  %1212 = bitcast [8 x i32*]* %l_2817 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1212) #1
  %1213 = getelementptr inbounds [8 x i32*], [8 x i32*]* %l_2817, i64 0, i64 0
  store i32* %l_2813, i32** %1213, !tbaa !5
  %1214 = getelementptr inbounds i32*, i32** %1213, i64 1
  store i32* null, i32** %1214, !tbaa !5
  %1215 = getelementptr inbounds i32*, i32** %1214, i64 1
  store i32* null, i32** %1215, !tbaa !5
  %1216 = getelementptr inbounds i32*, i32** %1215, i64 1
  store i32* %l_2813, i32** %1216, !tbaa !5
  %1217 = getelementptr inbounds i32*, i32** %1216, i64 1
  store i32* null, i32** %1217, !tbaa !5
  %1218 = getelementptr inbounds i32*, i32** %1217, i64 1
  store i32* null, i32** %1218, !tbaa !5
  %1219 = getelementptr inbounds i32*, i32** %1218, i64 1
  store i32* %l_2813, i32** %1219, !tbaa !5
  %1220 = getelementptr inbounds i32*, i32** %1219, i64 1
  store i32* null, i32** %1220, !tbaa !5
  %1221 = bitcast [7 x i32]* %l_2818 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %1221) #1
  %1222 = bitcast i32* %i22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1222) #1
  %1223 = bitcast i32* %j23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1223) #1
  %1224 = bitcast i32* %k24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1224) #1
  store i32 0, i32* %i22, align 4, !tbaa !1
  br label %1225

; <label>:1225                                    ; preds = %1232, %1210
  %1226 = load i32, i32* %i22, align 4, !tbaa !1
  %1227 = icmp slt i32 %1226, 7
  br i1 %1227, label %1228, label %1235

; <label>:1228                                    ; preds = %1225
  %1229 = load i32, i32* %i22, align 4, !tbaa !1
  %1230 = sext i32 %1229 to i64
  %1231 = getelementptr inbounds [7 x i32], [7 x i32]* %l_2818, i32 0, i64 %1230
  store i32 909307948, i32* %1231, align 4, !tbaa !1
  br label %1232

; <label>:1232                                    ; preds = %1228
  %1233 = load i32, i32* %i22, align 4, !tbaa !1
  %1234 = add nsw i32 %1233, 1
  store i32 %1234, i32* %i22, align 4, !tbaa !1
  br label %1225

; <label>:1235                                    ; preds = %1225
  %1236 = load i32, i32* @g_208, align 4, !tbaa !1
  %1237 = add i32 %1236, -1
  store i32 %1237, i32* @g_208, align 4, !tbaa !1
  %1238 = load i32, i32* %l_2511, align 4, !tbaa !1
  %1239 = add nsw i32 %1238, 4
  %1240 = sext i32 %1239 to i64
  %1241 = load i8, i8* @g_2506, align 1, !tbaa !9
  %1242 = zext i8 %1241 to i32
  %1243 = add nsw i32 %1242, 1
  %1244 = sext i32 %1243 to i64
  %1245 = load i8, i8* @g_2506, align 1, !tbaa !9
  %1246 = zext i8 %1245 to i64
  %1247 = getelementptr inbounds [5 x [6 x [8 x i16]]], [5 x [6 x [8 x i16]]]* @g_2635, i32 0, i64 %1246
  %1248 = getelementptr inbounds [6 x [8 x i16]], [6 x [8 x i16]]* %1247, i32 0, i64 %1244
  %1249 = getelementptr inbounds [8 x i16], [8 x i16]* %1248, i32 0, i64 %1240
  %1250 = load i16, i16* %1249, align 2, !tbaa !10
  %1251 = sext i16 %1250 to i32
  %1252 = icmp ult i32 %1236, %1251
  %1253 = zext i1 %1252 to i32
  %1254 = load i32*, i32** @g_290, align 8, !tbaa !5
  store i32 %1253, i32* %1254, align 4, !tbaa !1
  %1255 = load i32, i32* %l_2511, align 4, !tbaa !1
  %1256 = add nsw i32 %1255, 1
  %1257 = sext i32 %1256 to i64
  %1258 = getelementptr inbounds [10 x i8], [10 x i8]* @g_200, i32 0, i64 %1257
  %1259 = load i8, i8* %1258, align 1, !tbaa !9
  %1260 = sext i8 %1259 to i32
  %1261 = load i32*, i32** %l_2808, align 8, !tbaa !5
  store i32 %1260, i32* %1261, align 4, !tbaa !1
  store i32 %1260, i32* %l_2541, align 4, !tbaa !1
  %1262 = load i32, i32* %l_2811, align 4, !tbaa !1
  %1263 = icmp ne i32 %1262, 0
  br i1 %1263, label %1264, label %1265

; <label>:1264                                    ; preds = %1235
  store i32 41, i32* %2
  br label %1266

; <label>:1265                                    ; preds = %1235
  store i32 0, i32* %2
  br label %1266

; <label>:1266                                    ; preds = %1265, %1264
  %1267 = bitcast i32* %k24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1267) #1
  %1268 = bitcast i32* %j23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1268) #1
  %1269 = bitcast i32* %i22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1269) #1
  %1270 = bitcast [7 x i32]* %l_2818 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %1270) #1
  %1271 = bitcast [8 x i32*]* %l_2817 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1271) #1
  %1272 = bitcast i32** %l_2816 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1272) #1
  %cleanup.dest.25 = load i32, i32* %2
  switch i32 %cleanup.dest.25, label %2652 [
    i32 0, label %1273
    i32 41, label %1274
  ]

; <label>:1273                                    ; preds = %1266
  br label %1274

; <label>:1274                                    ; preds = %1273, %1266
  %1275 = load i8, i8* @g_2506, align 1, !tbaa !9
  %1276 = zext i8 %1275 to i32
  %1277 = add nsw i32 %1276, 1
  %1278 = trunc i32 %1277 to i8
  store i8 %1278, i8* @g_2506, align 1, !tbaa !9
  br label %1206

; <label>:1279                                    ; preds = %1206
  %1280 = load volatile i16, i16* @g_2822, align 2, !tbaa !10
  %1281 = add i16 %1280, -1
  store volatile i16 %1281, i16* @g_2822, align 2, !tbaa !10
  store i32 0, i32* @g_984, align 4, !tbaa !1
  br label %1282

; <label>:1282                                    ; preds = %1397, %1279
  %1283 = load i32, i32* @g_984, align 4, !tbaa !1
  %1284 = icmp ule i32 %1283, 9
  br i1 %1284, label %1285, label %1400

; <label>:1285                                    ; preds = %1282
  %1286 = bitcast i64* %l_2837 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1286) #1
  store i64 7583838840749762258, i64* %l_2837, align 8, !tbaa !7
  %1287 = bitcast i8** %l_2838 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1287) #1
  store i8* null, i8** %l_2838, align 8, !tbaa !5
  %1288 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1288) #1
  %1289 = bitcast i32* %j27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1289) #1
  %1290 = bitcast i32* %k28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1290) #1
  %1291 = load i32*, i32** %l_2806, align 8, !tbaa !5
  %1292 = load i32, i32* %1291, align 4, !tbaa !1
  %1293 = sext i32 %1292 to i64
  %1294 = trunc i64 %1293 to i32
  store i32 %1294, i32* %1291, align 4, !tbaa !1
  %1295 = load i32, i32* %l_2511, align 4, !tbaa !1
  %1296 = add nsw i32 %1295, 1
  %1297 = sext i32 %1296 to i64
  %1298 = load i32, i32* %l_2511, align 4, !tbaa !1
  %1299 = sext i32 %1298 to i64
  %1300 = load i32, i32* %l_2511, align 4, !tbaa !1
  %1301 = add nsw i32 %1300, 1
  %1302 = sext i32 %1301 to i64
  %1303 = getelementptr inbounds [5 x [6 x [8 x i16]]], [5 x [6 x [8 x i16]]]* @g_2635, i32 0, i64 %1302
  %1304 = getelementptr inbounds [6 x [8 x i16]], [6 x [8 x i16]]* %1303, i32 0, i64 %1299
  %1305 = getelementptr inbounds [8 x i16], [8 x i16]* %1304, i32 0, i64 %1297
  %1306 = load i16, i16* %1305, align 2, !tbaa !10
  %1307 = sext i16 %1306 to i32
  %1308 = load i32, i32* %l_2511, align 4, !tbaa !1
  %1309 = add nsw i32 %1308, 5
  %1310 = sext i32 %1309 to i64
  %1311 = getelementptr inbounds [10 x i8], [10 x i8]* @g_200, i32 0, i64 %1310
  %1312 = load i8, i8* %1311, align 1, !tbaa !9
  %1313 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1312, i8 signext -94)
  %1314 = sext i8 %1313 to i16
  %1315 = load i32*, i32** %l_2807, align 8, !tbaa !5
  %1316 = load i32, i32* %1315, align 4, !tbaa !1
  store i32 %1316, i32* %l_2541, align 4, !tbaa !1
  store i32 %1316, i32* getelementptr inbounds ([5 x [5 x [6 x i32]]], [5 x [5 x [6 x i32]]]* @g_2833, i32 0, i64 3, i64 2, i64 3), align 4, !tbaa !1
  %1317 = load i16, i16* getelementptr inbounds ([2 x [4 x i16]], [2 x [4 x i16]]* @g_1889, i32 0, i64 1, i64 0), align 2, !tbaa !10
  %1318 = add i16 %1317, -1
  store i16 %1318, i16* getelementptr inbounds ([2 x [4 x i16]], [2 x [4 x i16]]* @g_1889, i32 0, i64 1, i64 0), align 2, !tbaa !10
  store i16 %1318, i16* @g_250, align 2, !tbaa !10
  store i16 %1318, i16* @g_513, align 2, !tbaa !10
  store i16 %1318, i16* @g_79, align 2, !tbaa !10
  %1319 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %1314, i16 zeroext %1318)
  %1320 = zext i16 %1319 to i32
  %1321 = load i32*, i32** @g_290, align 8, !tbaa !5
  %1322 = load i32, i32* %1321, align 4, !tbaa !1
  %1323 = load i32*, i32** %l_2807, align 8, !tbaa !5
  %1324 = load i32, i32* %1323, align 4, !tbaa !1
  %1325 = xor i32 %1320, %1324
  %1326 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1327 = load i32, i32* %1326, align 4, !tbaa !1
  %1328 = load i32, i32* %l_2654, align 4, !tbaa !1
  %1329 = load i64, i64* %l_2837, align 8, !tbaa !7
  %1330 = load i64*, i64** %l_2653, align 8, !tbaa !5
  %1331 = load i64, i64* %1330, align 8, !tbaa !7
  %1332 = or i64 %1331, %1329
  store i64 %1332, i64* %1330, align 8, !tbaa !7
  %1333 = load i32, i32* %l_2654, align 4, !tbaa !1
  %1334 = sext i32 %1333 to i64
  %1335 = xor i64 %1332, %1334
  %1336 = icmp ne i64 %1335, 0
  br i1 %1336, label %1337, label %1340

; <label>:1337                                    ; preds = %1285
  %1338 = load i32, i32* %l_2811, align 4, !tbaa !1
  %1339 = icmp ne i32 %1338, 0
  br label %1340

; <label>:1340                                    ; preds = %1337, %1285
  %1341 = phi i1 [ false, %1285 ], [ %1339, %1337 ]
  %1342 = xor i1 %1341, true
  %1343 = zext i1 %1342 to i32
  %1344 = load i32, i32* %l_2811, align 4, !tbaa !1
  %1345 = icmp slt i32 %1343, %1344
  br i1 %1345, label %1350, label %1346

; <label>:1346                                    ; preds = %1340
  %1347 = load i32*, i32** @g_1414, align 8, !tbaa !5
  %1348 = load i32, i32* %1347, align 4, !tbaa !1
  %1349 = icmp ne i32 %1348, 0
  br label %1350

; <label>:1350                                    ; preds = %1346, %1340
  %1351 = phi i1 [ true, %1340 ], [ %1349, %1346 ]
  %1352 = zext i1 %1351 to i32
  %1353 = load i32*, i32** @g_1414, align 8, !tbaa !5
  %1354 = load i32, i32* %1353, align 4, !tbaa !1
  %1355 = icmp slt i32 %1352, %1354
  %1356 = zext i1 %1355 to i32
  store i32 %1356, i32* %l_2812, align 4, !tbaa !1
  %1357 = load i32, i32* %l_2811, align 4, !tbaa !1
  %1358 = icmp eq i32 %1356, %1357
  %1359 = zext i1 %1358 to i32
  %1360 = xor i32 %1359, -1
  %1361 = icmp sge i32 %1307, %1360
  br i1 %1361, label %1362, label %1367

; <label>:1362                                    ; preds = %1350
  %1363 = load i8*, i8** @g_612, align 8, !tbaa !5
  %1364 = load i8, i8* %1363, align 1, !tbaa !9
  %1365 = sext i8 %1364 to i32
  %1366 = icmp ne i32 %1365, 0
  br label %1367

; <label>:1367                                    ; preds = %1362, %1350
  %1368 = phi i1 [ false, %1350 ], [ %1366, %1362 ]
  %1369 = zext i1 %1368 to i32
  %1370 = sext i32 %1369 to i64
  %1371 = load i64*, i64** @g_2587, align 8, !tbaa !5
  %1372 = load i64, i64* %1371, align 8, !tbaa !7
  %1373 = icmp ule i64 %1370, %1372
  %1374 = zext i1 %1373 to i32
  %1375 = trunc i32 %1374 to i8
  %1376 = load i32, i32* %l_2811, align 4, !tbaa !1
  %1377 = trunc i32 %1376 to i8
  %1378 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1375, i8 signext %1377)
  %1379 = sext i8 %1378 to i32
  %1380 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 2), align 4, !tbaa !1
  %1381 = and i32 %1379, %1380
  %1382 = load i8, i8* @g_108, align 1, !tbaa !9
  %1383 = sext i8 %1382 to i32
  %1384 = or i32 %1383, %1381
  %1385 = trunc i32 %1384 to i8
  store i8 %1385, i8* @g_108, align 1, !tbaa !9
  %1386 = sext i8 %1385 to i64
  %1387 = or i64 %1386, 138
  %1388 = trunc i64 %1387 to i32
  %1389 = load i32*, i32** %l_2806, align 8, !tbaa !5
  store i32 %1388, i32* %1389, align 4, !tbaa !1
  %1390 = load i32*, i32** @g_290, align 8, !tbaa !5
  %1391 = load i32, i32* %1390, align 4, !tbaa !1
  store i32 %1391, i32* %1
  store i32 1, i32* %2
  %1392 = bitcast i32* %k28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1392) #1
  %1393 = bitcast i32* %j27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1393) #1
  %1394 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1394) #1
  %1395 = bitcast i8** %l_2838 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1395) #1
  %1396 = bitcast i64* %l_2837 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1396) #1
  br label %1488
                                                  ; No predecessors!
  %1398 = load i32, i32* @g_984, align 4, !tbaa !1
  %1399 = add i32 %1398, 1
  store i32 %1399, i32* @g_984, align 4, !tbaa !1
  br label %1282

; <label>:1400                                    ; preds = %1282
  store i64 0, i64* @g_247, align 8, !tbaa !7
  br label %1401

; <label>:1401                                    ; preds = %1484, %1400
  %1402 = load i64, i64* @g_247, align 8, !tbaa !7
  %1403 = icmp ule i64 %1402, 2
  br i1 %1403, label %1404, label %1487

; <label>:1404                                    ; preds = %1401
  %1405 = bitcast i8** %l_2843 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1405) #1
  store i8* null, i8** %l_2843, align 8, !tbaa !5
  %1406 = bitcast i8*** %l_2842 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1406) #1
  store i8** %l_2843, i8*** %l_2842, align 8, !tbaa !5
  %1407 = bitcast i8*** %l_2844 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1407) #1
  store i8** null, i8*** %l_2844, align 8, !tbaa !5
  %1408 = bitcast i8** %l_2846 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1408) #1
  store i8* null, i8** %l_2846, align 8, !tbaa !5
  %1409 = bitcast i8*** %l_2845 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1409) #1
  store i8** %l_2846, i8*** %l_2845, align 8, !tbaa !5
  %1410 = load i8, i8* %l_2751, align 1, !tbaa !9
  %1411 = icmp ne i8 %1410, 0
  br i1 %1411, label %1412, label %1413

; <label>:1412                                    ; preds = %1404
  store i32 48, i32* %2
  br label %1477

; <label>:1413                                    ; preds = %1404
  %1414 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1415 = load i32, i32* %1414, align 4, !tbaa !1
  %1416 = load i16**, i16*** @g_1535, align 8, !tbaa !5
  %1417 = load i16*, i16** %1416, align 8, !tbaa !5
  %1418 = load volatile i16, i16* %1417, align 2, !tbaa !10
  %1419 = sext i16 %1418 to i32
  %1420 = icmp slt i32 %1415, %1419
  %1421 = zext i1 %1420 to i32
  %1422 = load i16*, i16** %l_2839, align 8, !tbaa !5
  %1423 = load i16**, i16*** @g_2798, align 8, !tbaa !5
  store i16* %1422, i16** %1423, align 8, !tbaa !5
  %1424 = load i16*, i16** %l_2840, align 8, !tbaa !5
  %1425 = icmp ne i16* %1422, %1424
  %1426 = zext i1 %1425 to i32
  %1427 = load i32*, i32** %l_2807, align 8, !tbaa !5
  %1428 = load i32, i32* %1427, align 4, !tbaa !1
  %1429 = icmp ne i32 %1428, 0
  br i1 %1429, label %1456, label %1430

; <label>:1430                                    ; preds = %1413
  %1431 = load i8*, i8** %l_2841, align 8, !tbaa !5
  %1432 = load i8**, i8*** %l_2842, align 8, !tbaa !5
  store i8* @g_1021, i8** %1432, align 8, !tbaa !5
  %1433 = load i8**, i8*** %l_2845, align 8, !tbaa !5
  store i8* @g_1021, i8** %1433, align 8, !tbaa !5
  store i8* @g_1021, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_2847, i32 0, i64 0), align 8, !tbaa !5
  %1434 = icmp ne i8* %1431, @g_1021
  %1435 = zext i1 %1434 to i32
  %1436 = getelementptr inbounds [6 x i16], [6 x i16]* %l_2848, i32 0, i64 5
  %1437 = load i16, i16* %1436, align 2, !tbaa !10
  %1438 = sext i16 %1437 to i32
  %1439 = icmp ne i32 %1438, 0
  br i1 %1439, label %1441, label %1440

; <label>:1440                                    ; preds = %1430
  br label %1441

; <label>:1441                                    ; preds = %1440, %1430
  %1442 = phi i1 [ true, %1430 ], [ true, %1440 ]
  %1443 = zext i1 %1442 to i32
  %1444 = trunc i32 %1443 to i16
  %1445 = load i16*, i16** %l_2840, align 8, !tbaa !5
  store i16 %1444, i16* %1445, align 2, !tbaa !10
  %1446 = sext i16 %1444 to i32
  %1447 = load i32, i32* %l_2541, align 4, !tbaa !1
  %1448 = icmp ne i32 %1446, %1447
  %1449 = zext i1 %1448 to i32
  %1450 = icmp sgt i32 %1435, %1449
  br i1 %1450, label %1451, label %1454

; <label>:1451                                    ; preds = %1441
  %1452 = load i64, i64* %l_2849, align 8, !tbaa !7
  %1453 = icmp ne i64 %1452, 0
  br label %1454

; <label>:1454                                    ; preds = %1451, %1441
  %1455 = phi i1 [ false, %1441 ], [ %1453, %1451 ]
  br label %1456

; <label>:1456                                    ; preds = %1454, %1413
  %1457 = phi i1 [ true, %1413 ], [ %1455, %1454 ]
  %1458 = zext i1 %1457 to i32
  store i32 %1458, i32* %l_2654, align 4, !tbaa !1
  br i1 %1457, label %1462, label %1459

; <label>:1459                                    ; preds = %1456
  %1460 = load i32, i32* getelementptr inbounds ([4 x [1 x [9 x i32]]], [4 x [1 x [9 x i32]]]* @func_1.l_2850, i32 0, i64 1, i64 0, i64 6), align 4, !tbaa !1
  %1461 = icmp ne i32 %1460, 0
  br label %1462

; <label>:1462                                    ; preds = %1459, %1456
  %1463 = phi i1 [ true, %1456 ], [ %1461, %1459 ]
  %1464 = zext i1 %1463 to i32
  %1465 = load volatile i64*, i64** @g_1592, align 8, !tbaa !5
  %1466 = load i64, i64* %1465, align 8, !tbaa !7
  %1467 = or i64 %1466, -3309912469235670829
  %1468 = load i32*, i32** @g_818, align 8, !tbaa !5
  %1469 = load i32, i32* %1468, align 4, !tbaa !1
  %1470 = sext i32 %1469 to i64
  %1471 = xor i64 %1467, %1470
  %1472 = trunc i64 %1471 to i32
  store i32 %1472, i32* %l_2541, align 4, !tbaa !1
  %1473 = load i32, i32* %l_2654, align 4, !tbaa !1
  %1474 = icmp ne i32 %1473, 0
  br i1 %1474, label %1475, label %1476

; <label>:1475                                    ; preds = %1462
  store i32 32, i32* %2
  br label %1477

; <label>:1476                                    ; preds = %1462
  store i32 0, i32* %2
  br label %1477

; <label>:1477                                    ; preds = %1476, %1475, %1412
  %1478 = bitcast i8*** %l_2845 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1478) #1
  %1479 = bitcast i8** %l_2846 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1479) #1
  %1480 = bitcast i8*** %l_2844 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1480) #1
  %1481 = bitcast i8*** %l_2842 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1481) #1
  %1482 = bitcast i8** %l_2843 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1482) #1
  %cleanup.dest.29 = load i32, i32* %2
  switch i32 %cleanup.dest.29, label %1488 [
    i32 0, label %1483
    i32 48, label %1487
  ]

; <label>:1483                                    ; preds = %1477
  br label %1484

; <label>:1484                                    ; preds = %1483
  %1485 = load i64, i64* @g_247, align 8, !tbaa !7
  %1486 = add i64 %1485, 1
  store i64 %1486, i64* @g_247, align 8, !tbaa !7
  br label %1401

; <label>:1487                                    ; preds = %1477, %1401
  store i32 0, i32* %2
  br label %1488

; <label>:1488                                    ; preds = %1487, %1477, %1367
  %1489 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1489) #1
  %1490 = bitcast i64* %l_2849 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1490) #1
  %1491 = bitcast i16** %l_2840 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1491) #1
  %1492 = bitcast [8 x i32*]* %l_2809 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1492) #1
  %1493 = bitcast i32** %l_2808 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1493) #1
  %1494 = bitcast i32** %l_2807 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1494) #1
  %1495 = bitcast i32** %l_2806 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1495) #1
  %cleanup.dest.30 = load i32, i32* %2
  switch i32 %cleanup.dest.30, label %1574 [
    i32 0, label %1496
  ]

; <label>:1496                                    ; preds = %1488
  br label %1497

; <label>:1497                                    ; preds = %1496
  %1498 = load i32, i32* %l_2511, align 4, !tbaa !1
  %1499 = add nsw i32 %1498, 1
  store i32 %1499, i32* %l_2511, align 4, !tbaa !1
  br label %1184

; <label>:1500                                    ; preds = %1184
  %1501 = load i32, i32* %l_2812, align 4, !tbaa !1
  %1502 = load i32, i32* %l_2812, align 4, !tbaa !1
  %1503 = load i8*, i8** @g_2407, align 8, !tbaa !5
  %1504 = load i8, i8* %1503, align 1, !tbaa !9
  %1505 = zext i8 %1504 to i32
  %1506 = icmp sge i32 %1502, %1505
  %1507 = zext i1 %1506 to i32
  %1508 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1509 = load i32, i32* %1508, align 4, !tbaa !1
  %1510 = getelementptr inbounds [1 x [1 x [4 x i32]]], [1 x [1 x [4 x i32]]]* %l_2810, i32 0, i64 0
  %1511 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %1510, i32 0, i64 0
  %1512 = getelementptr inbounds [4 x i32], [4 x i32]* %1511, i32 0, i64 2
  %1513 = load i32, i32* %1512, align 4, !tbaa !1
  %1514 = getelementptr inbounds [1 x [1 x [4 x i32]]], [1 x [1 x [4 x i32]]]* %l_2810, i32 0, i64 0
  %1515 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %1514, i32 0, i64 0
  %1516 = getelementptr inbounds [4 x i32], [4 x i32]* %1515, i32 0, i64 3
  %1517 = load i32, i32* %1516, align 4, !tbaa !1
  %1518 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1519 = load i32, i32* %1518, align 4, !tbaa !1
  %1520 = load i32, i32* %l_2868, align 4, !tbaa !1
  %1521 = trunc i32 %1520 to i8
  %1522 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext -79, i8 zeroext %1521)
  %1523 = zext i8 %1522 to i32
  %1524 = call i32 @safe_mod_func_int32_t_s_s(i32 %1523, i32 1)
  %1525 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext 3, i32 %1524)
  %1526 = load i32, i32* %l_2654, align 4, !tbaa !1
  %1527 = load i32, i32* %l_2541, align 4, !tbaa !1
  %1528 = icmp sge i32 %1526, %1527
  %1529 = zext i1 %1528 to i32
  %1530 = icmp sle i32 %1517, %1529
  %1531 = zext i1 %1530 to i32
  %1532 = trunc i32 %1531 to i16
  %1533 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1532, i32 13)
  %1534 = zext i16 %1533 to i64
  %1535 = icmp sle i64 181, %1534
  %1536 = zext i1 %1535 to i32
  %1537 = icmp sgt i32 %1507, %1536
  %1538 = zext i1 %1537 to i32
  %1539 = sext i32 %1538 to i64
  %1540 = icmp ule i64 %1539, 255
  %1541 = zext i1 %1540 to i32
  %1542 = trunc i32 %1541 to i8
  %1543 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %1542)
  %1544 = sext i8 %1543 to i32
  %1545 = icmp sle i32 %1501, %1544
  %1546 = zext i1 %1545 to i32
  %1547 = trunc i32 %1546 to i8
  %1548 = load i16, i16* %l_2869, align 2, !tbaa !10
  %1549 = zext i16 %1548 to i32
  %1550 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %1547, i32 %1549)
  %1551 = sext i8 %1550 to i32
  %1552 = icmp ne i32 %1551, 0
  br i1 %1552, label %1553, label %1558

; <label>:1553                                    ; preds = %1500
  %1554 = load i8*, i8** @g_612, align 8, !tbaa !5
  %1555 = load i8, i8* %1554, align 1, !tbaa !9
  %1556 = sext i8 %1555 to i32
  %1557 = icmp ne i32 %1556, 0
  br label %1558

; <label>:1558                                    ; preds = %1553, %1500
  %1559 = phi i1 [ false, %1500 ], [ %1557, %1553 ]
  %1560 = zext i1 %1559 to i32
  %1561 = trunc i32 %1560 to i8
  %1562 = load i8, i8* %l_18, align 1, !tbaa !9
  %1563 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1561, i8 zeroext %1562)
  %1564 = zext i8 %1563 to i64
  %1565 = load volatile i64*, i64** @g_319, align 8, !tbaa !5
  %1566 = load i64, i64* %1565, align 8, !tbaa !7
  %1567 = call i64 @safe_mod_func_int64_t_s_s(i64 %1564, i64 %1566)
  %1568 = load i32**, i32*** @g_393, align 8, !tbaa !5
  %1569 = load i32*, i32** %1568, align 8, !tbaa !5
  %1570 = load i32, i32* %1569, align 4, !tbaa !1
  %1571 = sext i32 %1570 to i64
  %1572 = or i64 %1571, %1567
  %1573 = trunc i64 %1572 to i32
  store i32 %1573, i32* %1569, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %1574

; <label>:1574                                    ; preds = %1558, %1488
  %1575 = bitcast i32* %k20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1575) #1
  %1576 = bitcast i32* %j19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1576) #1
  %1577 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1577) #1
  %1578 = bitcast i32* %l_2812 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1578) #1
  %1579 = bitcast [1 x [1 x [4 x i32]]]* %l_2810 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1579) #1
  %cleanup.dest.31 = load i32, i32* %2
  switch i32 %cleanup.dest.31, label %2424 [
    i32 0, label %1580
    i32 32, label %1169
  ]

; <label>:1580                                    ; preds = %1574
  br label %1581

; <label>:1581                                    ; preds = %1580
  %1582 = load i8, i8* %l_2751, align 1, !tbaa !9
  %1583 = sext i8 %1582 to i64
  %1584 = call i64 @safe_sub_func_int64_t_s_s(i64 %1583, i64 8)
  %1585 = trunc i64 %1584 to i8
  store i8 %1585, i8* %l_2751, align 1, !tbaa !9
  br label %1173

; <label>:1586                                    ; preds = %1173
  store i8 -18, i8* @g_4, align 1, !tbaa !9
  br label %1587

; <label>:1587                                    ; preds = %2420, %1586
  %1588 = load i8, i8* @g_4, align 1, !tbaa !9
  %1589 = sext i8 %1588 to i32
  %1590 = icmp slt i32 %1589, 15
  br i1 %1590, label %1591, label %2423

; <label>:1591                                    ; preds = %1587
  %1592 = bitcast i32* %l_2872 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1592) #1
  store i32 760443867, i32* %l_2872, align 4, !tbaa !1
  %1593 = bitcast [3 x [8 x i32**]]* %l_2873 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %1593) #1
  %1594 = bitcast [3 x [8 x i32**]]* %l_2873 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1594, i8* bitcast ([3 x [8 x i32**]]* @func_1.l_2873 to i8*), i64 192, i32 16, i1 false)
  %1595 = bitcast i32* %l_2880 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1595) #1
  store i32 -2052992591, i32* %l_2880, align 4, !tbaa !1
  %1596 = bitcast i32* %l_2903 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1596) #1
  store i32 -20731319, i32* %l_2903, align 4, !tbaa !1
  %1597 = bitcast i32** %l_2911 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1597) #1
  store i32* null, i32** %l_2911, align 8, !tbaa !5
  %1598 = bitcast [10 x i32*****]* %l_2924 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1598) #1
  %1599 = getelementptr inbounds [10 x i32*****], [10 x i32*****]* %l_2924, i64 0, i64 0
  store i32***** %l_2921, i32****** %1599, !tbaa !5
  %1600 = getelementptr inbounds i32*****, i32****** %1599, i64 1
  store i32***** %l_2921, i32****** %1600, !tbaa !5
  %1601 = getelementptr inbounds i32*****, i32****** %1600, i64 1
  store i32***** %l_2921, i32****** %1601, !tbaa !5
  %1602 = getelementptr inbounds i32*****, i32****** %1601, i64 1
  store i32***** %l_2921, i32****** %1602, !tbaa !5
  %1603 = getelementptr inbounds i32*****, i32****** %1602, i64 1
  store i32***** %l_2921, i32****** %1603, !tbaa !5
  %1604 = getelementptr inbounds i32*****, i32****** %1603, i64 1
  store i32***** %l_2921, i32****** %1604, !tbaa !5
  %1605 = getelementptr inbounds i32*****, i32****** %1604, i64 1
  store i32***** %l_2921, i32****** %1605, !tbaa !5
  %1606 = getelementptr inbounds i32*****, i32****** %1605, i64 1
  store i32***** %l_2921, i32****** %1606, !tbaa !5
  %1607 = getelementptr inbounds i32*****, i32****** %1606, i64 1
  store i32***** %l_2921, i32****** %1607, !tbaa !5
  %1608 = getelementptr inbounds i32*****, i32****** %1607, i64 1
  store i32***** %l_2921, i32****** %1608, !tbaa !5
  %1609 = bitcast i16** %l_2938 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1609) #1
  store i16* getelementptr inbounds ([5 x [4 x i16]], [5 x [4 x i16]]* @g_2939, i32 0, i64 2, i64 2), i16** %l_2938, align 8, !tbaa !5
  %1610 = bitcast i32* %l_2954 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1610) #1
  store i32 2103563827, i32* %l_2954, align 4, !tbaa !1
  %1611 = bitcast i32* %l_2964 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1611) #1
  store i32 -1, i32* %l_2964, align 4, !tbaa !1
  %1612 = bitcast [10 x [7 x i16]]* %l_2999 to i8*
  call void @llvm.lifetime.start(i64 140, i8* %1612) #1
  %1613 = bitcast [10 x [7 x i16]]* %l_2999 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1613, i8* bitcast ([10 x [7 x i16]]* @func_1.l_2999 to i8*), i64 140, i32 16, i1 false)
  %1614 = bitcast i32* %l_3001 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1614) #1
  store i32 0, i32* %l_3001, align 4, !tbaa !1
  %1615 = bitcast [8 x [9 x i32**]]* %l_3002 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %1615) #1
  %1616 = getelementptr inbounds [8 x [9 x i32**]], [8 x [9 x i32**]]* %l_3002, i64 0, i64 0
  %1617 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1616, i64 0, i64 0
  store i32** @g_818, i32*** %1617, !tbaa !5
  %1618 = getelementptr inbounds i32**, i32*** %1617, i64 1
  store i32** @g_1414, i32*** %1618, !tbaa !5
  %1619 = getelementptr inbounds i32**, i32*** %1618, i64 1
  store i32** null, i32*** %1619, !tbaa !5
  %1620 = getelementptr inbounds i32**, i32*** %1619, i64 1
  store i32** @g_818, i32*** %1620, !tbaa !5
  %1621 = getelementptr inbounds i32**, i32*** %1620, i64 1
  store i32** @g_818, i32*** %1621, !tbaa !5
  %1622 = getelementptr inbounds i32**, i32*** %1621, i64 1
  store i32** @g_818, i32*** %1622, !tbaa !5
  %1623 = getelementptr inbounds i32**, i32*** %1622, i64 1
  store i32** null, i32*** %1623, !tbaa !5
  %1624 = getelementptr inbounds i32**, i32*** %1623, i64 1
  store i32** @g_1414, i32*** %1624, !tbaa !5
  %1625 = getelementptr inbounds i32**, i32*** %1624, i64 1
  store i32** null, i32*** %1625, !tbaa !5
  %1626 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1616, i64 1
  %1627 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1626, i64 0, i64 0
  store i32** @g_818, i32*** %1627, !tbaa !5
  %1628 = getelementptr inbounds i32**, i32*** %1627, i64 1
  store i32** %l_2740, i32*** %1628, !tbaa !5
  %1629 = getelementptr inbounds i32**, i32*** %1628, i64 1
  store i32** @g_818, i32*** %1629, !tbaa !5
  %1630 = getelementptr inbounds i32**, i32*** %1629, i64 1
  store i32** %l_2740, i32*** %1630, !tbaa !5
  %1631 = getelementptr inbounds i32**, i32*** %1630, i64 1
  store i32** %l_2740, i32*** %1631, !tbaa !5
  %1632 = getelementptr inbounds i32**, i32*** %1631, i64 1
  store i32** @g_818, i32*** %1632, !tbaa !5
  %1633 = getelementptr inbounds i32**, i32*** %1632, i64 1
  store i32** %l_2740, i32*** %1633, !tbaa !5
  %1634 = getelementptr inbounds i32**, i32*** %1633, i64 1
  store i32** @g_818, i32*** %1634, !tbaa !5
  %1635 = getelementptr inbounds i32**, i32*** %1634, i64 1
  store i32** %l_2740, i32*** %1635, !tbaa !5
  %1636 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1626, i64 1
  %1637 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1636, i64 0, i64 0
  store i32** %l_2740, i32*** %1637, !tbaa !5
  %1638 = getelementptr inbounds i32**, i32*** %1637, i64 1
  store i32** @g_1414, i32*** %1638, !tbaa !5
  %1639 = getelementptr inbounds i32**, i32*** %1638, i64 1
  store i32** @g_818, i32*** %1639, !tbaa !5
  %1640 = getelementptr inbounds i32**, i32*** %1639, i64 1
  store i32** @g_1414, i32*** %1640, !tbaa !5
  %1641 = getelementptr inbounds i32**, i32*** %1640, i64 1
  store i32** null, i32*** %1641, !tbaa !5
  %1642 = getelementptr inbounds i32**, i32*** %1641, i64 1
  store i32** @g_818, i32*** %1642, !tbaa !5
  %1643 = getelementptr inbounds i32**, i32*** %1642, i64 1
  store i32** @g_1414, i32*** %1643, !tbaa !5
  %1644 = getelementptr inbounds i32**, i32*** %1643, i64 1
  store i32** @g_818, i32*** %1644, !tbaa !5
  %1645 = getelementptr inbounds i32**, i32*** %1644, i64 1
  store i32** @g_818, i32*** %1645, !tbaa !5
  %1646 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1636, i64 1
  %1647 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1646, i64 0, i64 0
  store i32** null, i32*** %1647, !tbaa !5
  %1648 = getelementptr inbounds i32**, i32*** %1647, i64 1
  store i32** %l_2740, i32*** %1648, !tbaa !5
  %1649 = getelementptr inbounds i32**, i32*** %1648, i64 1
  store i32** %l_2740, i32*** %1649, !tbaa !5
  %1650 = getelementptr inbounds i32**, i32*** %1649, i64 1
  store i32** %l_2740, i32*** %1650, !tbaa !5
  %1651 = getelementptr inbounds i32**, i32*** %1650, i64 1
  store i32** %l_2740, i32*** %1651, !tbaa !5
  %1652 = getelementptr inbounds i32**, i32*** %1651, i64 1
  store i32** %l_2740, i32*** %1652, !tbaa !5
  %1653 = getelementptr inbounds i32**, i32*** %1652, i64 1
  store i32** %l_2740, i32*** %1653, !tbaa !5
  %1654 = getelementptr inbounds i32**, i32*** %1653, i64 1
  store i32** null, i32*** %1654, !tbaa !5
  %1655 = getelementptr inbounds i32**, i32*** %1654, i64 1
  store i32** %l_2740, i32*** %1655, !tbaa !5
  %1656 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1646, i64 1
  %1657 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1656, i64 0, i64 0
  store i32** %l_2740, i32*** %1657, !tbaa !5
  %1658 = getelementptr inbounds i32**, i32*** %1657, i64 1
  store i32** @g_1414, i32*** %1658, !tbaa !5
  %1659 = getelementptr inbounds i32**, i32*** %1658, i64 1
  store i32** @g_818, i32*** %1659, !tbaa !5
  %1660 = getelementptr inbounds i32**, i32*** %1659, i64 1
  store i32** @g_1414, i32*** %1660, !tbaa !5
  %1661 = getelementptr inbounds i32**, i32*** %1660, i64 1
  store i32** null, i32*** %1661, !tbaa !5
  %1662 = getelementptr inbounds i32**, i32*** %1661, i64 1
  store i32** @g_818, i32*** %1662, !tbaa !5
  %1663 = getelementptr inbounds i32**, i32*** %1662, i64 1
  store i32** @g_1414, i32*** %1663, !tbaa !5
  %1664 = getelementptr inbounds i32**, i32*** %1663, i64 1
  store i32** @g_818, i32*** %1664, !tbaa !5
  %1665 = getelementptr inbounds i32**, i32*** %1664, i64 1
  store i32** @g_818, i32*** %1665, !tbaa !5
  %1666 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1656, i64 1
  %1667 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1666, i64 0, i64 0
  store i32** null, i32*** %1667, !tbaa !5
  %1668 = getelementptr inbounds i32**, i32*** %1667, i64 1
  store i32** %l_2740, i32*** %1668, !tbaa !5
  %1669 = getelementptr inbounds i32**, i32*** %1668, i64 1
  store i32** %l_2740, i32*** %1669, !tbaa !5
  %1670 = getelementptr inbounds i32**, i32*** %1669, i64 1
  store i32** %l_2740, i32*** %1670, !tbaa !5
  %1671 = getelementptr inbounds i32**, i32*** %1670, i64 1
  store i32** %l_2740, i32*** %1671, !tbaa !5
  %1672 = getelementptr inbounds i32**, i32*** %1671, i64 1
  store i32** %l_2740, i32*** %1672, !tbaa !5
  %1673 = getelementptr inbounds i32**, i32*** %1672, i64 1
  store i32** %l_2740, i32*** %1673, !tbaa !5
  %1674 = getelementptr inbounds i32**, i32*** %1673, i64 1
  store i32** null, i32*** %1674, !tbaa !5
  %1675 = getelementptr inbounds i32**, i32*** %1674, i64 1
  store i32** %l_2740, i32*** %1675, !tbaa !5
  %1676 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1666, i64 1
  %1677 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1676, i64 0, i64 0
  store i32** %l_2740, i32*** %1677, !tbaa !5
  %1678 = getelementptr inbounds i32**, i32*** %1677, i64 1
  store i32** @g_1414, i32*** %1678, !tbaa !5
  %1679 = getelementptr inbounds i32**, i32*** %1678, i64 1
  store i32** @g_818, i32*** %1679, !tbaa !5
  %1680 = getelementptr inbounds i32**, i32*** %1679, i64 1
  store i32** @g_1414, i32*** %1680, !tbaa !5
  %1681 = getelementptr inbounds i32**, i32*** %1680, i64 1
  store i32** null, i32*** %1681, !tbaa !5
  %1682 = getelementptr inbounds i32**, i32*** %1681, i64 1
  store i32** @g_818, i32*** %1682, !tbaa !5
  %1683 = getelementptr inbounds i32**, i32*** %1682, i64 1
  store i32** @g_1414, i32*** %1683, !tbaa !5
  %1684 = getelementptr inbounds i32**, i32*** %1683, i64 1
  store i32** @g_818, i32*** %1684, !tbaa !5
  %1685 = getelementptr inbounds i32**, i32*** %1684, i64 1
  store i32** @g_818, i32*** %1685, !tbaa !5
  %1686 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1676, i64 1
  %1687 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1686, i64 0, i64 0
  store i32** null, i32*** %1687, !tbaa !5
  %1688 = getelementptr inbounds i32**, i32*** %1687, i64 1
  store i32** %l_2740, i32*** %1688, !tbaa !5
  %1689 = getelementptr inbounds i32**, i32*** %1688, i64 1
  store i32** %l_2740, i32*** %1689, !tbaa !5
  %1690 = getelementptr inbounds i32**, i32*** %1689, i64 1
  store i32** %l_2740, i32*** %1690, !tbaa !5
  %1691 = getelementptr inbounds i32**, i32*** %1690, i64 1
  store i32** %l_2740, i32*** %1691, !tbaa !5
  %1692 = getelementptr inbounds i32**, i32*** %1691, i64 1
  store i32** %l_2740, i32*** %1692, !tbaa !5
  %1693 = getelementptr inbounds i32**, i32*** %1692, i64 1
  store i32** %l_2740, i32*** %1693, !tbaa !5
  %1694 = getelementptr inbounds i32**, i32*** %1693, i64 1
  store i32** null, i32*** %1694, !tbaa !5
  %1695 = getelementptr inbounds i32**, i32*** %1694, i64 1
  store i32** %l_2740, i32*** %1695, !tbaa !5
  %1696 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1696) #1
  %1697 = bitcast i32* %j33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1697) #1
  %1698 = load i32, i32* %l_2811, align 4, !tbaa !1
  %1699 = icmp ne i32 %1698, 0
  br i1 %1699, label %1700, label %1868

; <label>:1700                                    ; preds = %1591
  %1701 = bitcast i32*** %l_2874 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1701) #1
  store i32** null, i32*** %l_2874, align 8, !tbaa !5
  %1702 = bitcast i32* %l_2875 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1702) #1
  store i32 -1, i32* %l_2875, align 4, !tbaa !1
  %1703 = bitcast i16** %l_2895 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1703) #1
  store i16* getelementptr inbounds ([2 x [4 x i16]], [2 x [4 x i16]]* @g_1889, i32 0, i64 1, i64 0), i16** %l_2895, align 8, !tbaa !5
  %1704 = bitcast i32* %l_2904 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1704) #1
  store i32 6, i32* %l_2904, align 4, !tbaa !1
  %1705 = bitcast i16* %l_2907 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1705) #1
  store i16 0, i16* %l_2907, align 2, !tbaa !10
  %1706 = load i32, i32* %l_2872, align 4, !tbaa !1
  %1707 = load i32, i32* @g_1766, align 4, !tbaa !1
  %1708 = getelementptr inbounds [3 x [8 x i32**]], [3 x [8 x i32**]]* %l_2873, i32 0, i64 1
  %1709 = getelementptr inbounds [8 x i32**], [8 x i32**]* %1708, i32 0, i64 1
  %1710 = load i32**, i32*** %1709, align 8, !tbaa !5
  %1711 = load i32**, i32*** %l_2874, align 8, !tbaa !5
  %1712 = icmp ne i32** %1710, %1711
  %1713 = zext i1 %1712 to i32
  %1714 = icmp ult i32 %1706, %1713
  %1715 = zext i1 %1714 to i32
  %1716 = load i32*, i32** @g_1414, align 8, !tbaa !5
  %1717 = load i32, i32* %1716, align 4, !tbaa !1
  %1718 = xor i32 %1717, %1715
  store i32 %1718, i32* %1716, align 4, !tbaa !1
  %1719 = icmp ne i32 %1718, 0
  br i1 %1719, label %1720, label %1753

; <label>:1720                                    ; preds = %1700
  %1721 = bitcast i32* %l_2878 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1721) #1
  store i32 7, i32* %l_2878, align 4, !tbaa !1
  %1722 = bitcast i32* %l_2879 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1722) #1
  store i32 1, i32* %l_2879, align 4, !tbaa !1
  %1723 = load i32, i32* %l_2875, align 4, !tbaa !1
  %1724 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1725 = load i32, i32* %1724, align 4, !tbaa !1
  %1726 = trunc i32 %1725 to i8
  store i32 9, i32* %l_2878, align 4, !tbaa !1
  %1727 = load i8*, i8** %l_2841, align 8, !tbaa !5
  store i8 1, i8* %1727, align 1, !tbaa !9
  %1728 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %1726, i32 1)
  %1729 = load i32*****, i32****** @g_1102, align 8, !tbaa !5
  %1730 = load volatile i32****, i32***** %1729, align 8, !tbaa !5
  %1731 = icmp ne i32**** %1730, null
  br i1 %1731, label %1736, label %1732

; <label>:1732                                    ; preds = %1720
  %1733 = load volatile i64*, i64** @g_1592, align 8, !tbaa !5
  %1734 = load i64, i64* %1733, align 8, !tbaa !7
  %1735 = icmp ne i64 %1734, 0
  br label %1736

; <label>:1736                                    ; preds = %1732, %1720
  %1737 = phi i1 [ true, %1720 ], [ %1735, %1732 ]
  %1738 = zext i1 %1737 to i32
  %1739 = sext i32 %1738 to i64
  %1740 = icmp slt i64 %1739, 1
  %1741 = zext i1 %1740 to i32
  %1742 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1743 = load i32, i32* %1742, align 4, !tbaa !1
  %1744 = icmp sgt i32 %1723, %1743
  %1745 = zext i1 %1744 to i32
  %1746 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_2041, i32 0, i64 1), align 4, !tbaa !1
  %1747 = and i32 %1745, %1746
  %1748 = load i32, i32* %l_2875, align 4, !tbaa !1
  %1749 = icmp slt i32 %1747, %1748
  %1750 = zext i1 %1749 to i32
  store i32 %1750, i32* %l_2880, align 4, !tbaa !1
  %1751 = bitcast i32* %l_2879 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1751) #1
  %1752 = bitcast i32* %l_2878 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1752) #1
  br label %1755

; <label>:1753                                    ; preds = %1700
  %1754 = load i32**, i32*** @g_393, align 8, !tbaa !5
  store i32* %l_2868, i32** %1754, align 8, !tbaa !5
  br label %1755

; <label>:1755                                    ; preds = %1753, %1736
  store i64 0, i64* @g_479, align 8, !tbaa !7
  br label %1756

; <label>:1756                                    ; preds = %1857, %1755
  %1757 = load i64, i64* @g_479, align 8, !tbaa !7
  %1758 = icmp eq i64 %1757, -9
  br i1 %1758, label %1759, label %1862

; <label>:1759                                    ; preds = %1756
  %1760 = bitcast i64* %l_2884 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1760) #1
  store i64 -3, i64* %l_2884, align 8, !tbaa !7
  %1761 = bitcast i32*** %l_2887 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1761) #1
  store i32** null, i32*** %l_2887, align 8, !tbaa !5
  %1762 = bitcast i32**** %l_2888 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1762) #1
  %1763 = getelementptr inbounds [3 x [8 x i32**]], [3 x [8 x i32**]]* %l_2873, i32 0, i64 1
  %1764 = getelementptr inbounds [8 x i32**], [8 x i32**]* %1763, i32 0, i64 1
  store i32*** %1764, i32**** %l_2888, align 8, !tbaa !5
  %1765 = bitcast [6 x i32]* %l_2896 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1765) #1
  %1766 = bitcast i32** %l_2897 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1766) #1
  store i32* %l_2654, i32** %l_2897, align 8, !tbaa !5
  %1767 = bitcast i32** %l_2898 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1767) #1
  store i32* @g_96, i32** %l_2898, align 8, !tbaa !5
  %1768 = bitcast i32** %l_2899 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1768) #1
  store i32* @g_96, i32** %l_2899, align 8, !tbaa !5
  %1769 = bitcast i32** %l_2900 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1769) #1
  store i32* null, i32** %l_2900, align 8, !tbaa !5
  %1770 = bitcast i32** %l_2901 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1770) #1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 1), i32** %l_2901, align 8, !tbaa !5
  %1771 = bitcast [9 x i32*]* %l_2902 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1771) #1
  %1772 = bitcast [9 x i32*]* %l_2902 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1772, i8 0, i64 72, i32 16, i1 false)
  %1773 = bitcast i8* %1772 to [9 x i32*]*
  %1774 = getelementptr [9 x i32*], [9 x i32*]* %1773, i32 0, i32 1
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32]* @g_2041 to i8*), i64 4) to i32*), i32** %1774
  %1775 = getelementptr [9 x i32*], [9 x i32*]* %1773, i32 0, i32 3
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32]* @g_2041 to i8*), i64 4) to i32*), i32** %1775
  %1776 = getelementptr [9 x i32*], [9 x i32*]* %1773, i32 0, i32 5
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32]* @g_2041 to i8*), i64 4) to i32*), i32** %1776
  %1777 = getelementptr [9 x i32*], [9 x i32*]* %1773, i32 0, i32 7
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32]* @g_2041 to i8*), i64 4) to i32*), i32** %1777
  %1778 = bitcast i32* %i34 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1778) #1
  store i32 0, i32* %i34, align 4, !tbaa !1
  br label %1779

; <label>:1779                                    ; preds = %1786, %1759
  %1780 = load i32, i32* %i34, align 4, !tbaa !1
  %1781 = icmp slt i32 %1780, 6
  br i1 %1781, label %1782, label %1789

; <label>:1782                                    ; preds = %1779
  %1783 = load i32, i32* %i34, align 4, !tbaa !1
  %1784 = sext i32 %1783 to i64
  %1785 = getelementptr inbounds [6 x i32], [6 x i32]* %l_2896, i32 0, i64 %1784
  store i32 -9, i32* %1785, align 4, !tbaa !1
  br label %1786

; <label>:1786                                    ; preds = %1782
  %1787 = load i32, i32* %i34, align 4, !tbaa !1
  %1788 = add nsw i32 %1787, 1
  store i32 %1788, i32* %i34, align 4, !tbaa !1
  br label %1779

; <label>:1789                                    ; preds = %1779
  %1790 = load i32**, i32*** @g_1767, align 8, !tbaa !5
  %1791 = load i32*, i32** %1790, align 8, !tbaa !5
  store i32 0, i32* %1791, align 4, !tbaa !1
  %1792 = load i32, i32* %l_2875, align 4, !tbaa !1
  %1793 = sext i32 %1792 to i64
  %1794 = load i64, i64* %l_2884, align 8, !tbaa !7
  %1795 = load i64, i64* %l_2884, align 8, !tbaa !7
  %1796 = load i32**, i32*** %l_2887, align 8, !tbaa !5
  %1797 = load i32***, i32**** %l_2888, align 8, !tbaa !5
  store i32** %1796, i32*** %1797, align 8, !tbaa !5
  %1798 = load i32**, i32*** %l_2874, align 8, !tbaa !5
  %1799 = icmp ne i32** %1796, %1798
  %1800 = zext i1 %1799 to i32
  %1801 = trunc i32 %1800 to i16
  %1802 = load i32, i32* %l_2868, align 4, !tbaa !1
  %1803 = icmp ne i32 %1802, 0
  br i1 %1803, label %1804, label %1821

; <label>:1804                                    ; preds = %1789
  %1805 = load i8*, i8** %l_2841, align 8, !tbaa !5
  %1806 = load i8, i8* %1805, align 1, !tbaa !9
  %1807 = add i8 %1806, -1
  store i8 %1807, i8* %1805, align 1, !tbaa !9
  %1808 = load i8***, i8**** @g_2893, align 8, !tbaa !5
  store i8*** %1808, i8**** @g_2893, align 8, !tbaa !5
  %1809 = icmp ne i8*** @g_262, %1808
  %1810 = zext i1 %1809 to i32
  %1811 = load i32, i32* %l_2875, align 4, !tbaa !1
  store i32 %1811, i32* %l_2511, align 4, !tbaa !1
  %1812 = trunc i32 %1811 to i8
  %1813 = load i64, i64* %l_2884, align 8, !tbaa !7
  %1814 = trunc i64 %1813 to i8
  %1815 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1812, i8 zeroext %1814)
  %1816 = zext i8 %1815 to i32
  %1817 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1818 = load i32, i32* %1817, align 4, !tbaa !1
  %1819 = or i32 %1816, %1818
  %1820 = icmp ne i32 %1819, 0
  br label %1821

; <label>:1821                                    ; preds = %1804, %1789
  %1822 = phi i1 [ false, %1789 ], [ %1820, %1804 ]
  %1823 = zext i1 %1822 to i32
  %1824 = trunc i32 %1823 to i16
  %1825 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1801, i16 zeroext %1824)
  %1826 = zext i16 %1825 to i64
  %1827 = icmp sle i64 %1794, %1826
  %1828 = zext i1 %1827 to i32
  %1829 = load i32*, i32** @g_818, align 8, !tbaa !5
  %1830 = load i32, i32* %1829, align 4, !tbaa !1
  %1831 = or i32 %1830, %1828
  store i32 %1831, i32* %1829, align 4, !tbaa !1
  %1832 = sext i32 %1831 to i64
  %1833 = icmp sle i64 %1793, %1832
  %1834 = zext i1 %1833 to i32
  %1835 = sext i32 %1834 to i64
  %1836 = icmp eq i64 3, %1835
  %1837 = zext i1 %1836 to i32
  %1838 = load i16*, i16** %l_2895, align 8, !tbaa !5
  %1839 = bitcast i16* %1838 to i8*
  %1840 = icmp ne i8* null, %1839
  %1841 = xor i1 %1840, true
  %1842 = zext i1 %1841 to i32
  %1843 = load i32*, i32** @g_1414, align 8, !tbaa !5
  store i32 %1842, i32* %1843, align 4, !tbaa !1
  %1844 = load i16, i16* %l_2907, align 2, !tbaa !10
  %1845 = add i16 %1844, 1
  store i16 %1845, i16* %l_2907, align 2, !tbaa !10
  %1846 = bitcast i32* %i34 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1846) #1
  %1847 = bitcast [9 x i32*]* %l_2902 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1847) #1
  %1848 = bitcast i32** %l_2901 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1848) #1
  %1849 = bitcast i32** %l_2900 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1849) #1
  %1850 = bitcast i32** %l_2899 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1850) #1
  %1851 = bitcast i32** %l_2898 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1851) #1
  %1852 = bitcast i32** %l_2897 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1852) #1
  %1853 = bitcast [6 x i32]* %l_2896 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1853) #1
  %1854 = bitcast i32**** %l_2888 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1854) #1
  %1855 = bitcast i32*** %l_2887 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1855) #1
  %1856 = bitcast i64* %l_2884 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1856) #1
  br label %1857

; <label>:1857                                    ; preds = %1821
  %1858 = load i64, i64* @g_479, align 8, !tbaa !7
  %1859 = trunc i64 %1858 to i16
  %1860 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %1859, i16 zeroext 5)
  %1861 = zext i16 %1860 to i64
  store i64 %1861, i64* @g_479, align 8, !tbaa !7
  br label %1756

; <label>:1862                                    ; preds = %1756
  %1863 = bitcast i16* %l_2907 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1863) #1
  %1864 = bitcast i32* %l_2904 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1864) #1
  %1865 = bitcast i16** %l_2895 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1865) #1
  %1866 = bitcast i32* %l_2875 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1866) #1
  %1867 = bitcast i32*** %l_2874 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1867) #1
  br label %1879

; <label>:1868                                    ; preds = %1591
  %1869 = bitcast i32**** %l_2910 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1869) #1
  store i32*** null, i32**** %l_2910, align 8, !tbaa !5
  %1870 = load i32***, i32**** %l_2910, align 8, !tbaa !5
  %1871 = icmp ne i32*** null, %1870
  %1872 = zext i1 %1871 to i32
  %1873 = load i8, i8* %l_2751, align 1, !tbaa !9
  %1874 = sext i8 %1873 to i32
  %1875 = icmp sge i32 %1872, %1874
  %1876 = zext i1 %1875 to i32
  %1877 = load i32*, i32** @g_1414, align 8, !tbaa !5
  store i32 %1876, i32* %1877, align 4, !tbaa !1
  %1878 = bitcast i32**** %l_2910 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1878) #1
  br label %1879

; <label>:1879                                    ; preds = %1868, %1862
  %1880 = getelementptr inbounds [3 x i32], [3 x i32]* %l_2906, i32 0, i64 0
  store i32 1857885256, i32* %1880, align 4, !tbaa !1
  %1881 = load i64*, i64** @g_477, align 8, !tbaa !5
  %1882 = load i64, i64* %1881, align 8, !tbaa !7
  %1883 = load i32****, i32***** %l_2921, align 8, !tbaa !5
  %1884 = getelementptr inbounds [8 x i32****], [8 x i32****]* %l_2925, i32 0, i64 5
  store i32**** %1883, i32***** %1884, align 8, !tbaa !5
  %1885 = icmp eq i32**** getelementptr inbounds ([10 x i32***], [10 x i32***]* @g_1877, i32 0, i64 2), %1883
  %1886 = zext i1 %1885 to i32
  %1887 = sext i32 %1886 to i64
  %1888 = xor i64 %1882, %1887
  %1889 = trunc i64 %1888 to i16
  %1890 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext 16114, i16 zeroext %1889)
  %1891 = zext i16 %1890 to i32
  %1892 = xor i32 %1891, -1
  %1893 = sext i32 %1892 to i64
  %1894 = load i16, i16* %l_2928, align 2, !tbaa !10
  %1895 = getelementptr inbounds [3 x i32], [3 x i32]* %l_2906, i32 0, i64 2
  %1896 = load i32, i32* %1895, align 4, !tbaa !1
  %1897 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %1894, i32 %1896)
  %1898 = icmp sle i64 %1893, 79
  %1899 = zext i1 %1898 to i32
  %1900 = trunc i32 %1899 to i16
  %1901 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %1900, i16 signext -892)
  %1902 = sext i16 %1901 to i64
  %1903 = load i64, i64* %l_2929, align 8, !tbaa !7
  %1904 = icmp sle i64 %1902, %1903
  %1905 = zext i1 %1904 to i32
  %1906 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1907 = load i32, i32* %1906, align 4, !tbaa !1
  %1908 = icmp slt i32 %1905, %1907
  %1909 = zext i1 %1908 to i32
  %1910 = sext i32 %1909 to i64
  %1911 = or i64 2, %1910
  %1912 = or i64 %1911, 252
  %1913 = call i64 @safe_add_func_int64_t_s_s(i64 %1912, i64 -1300520688316372297)
  %1914 = load i32, i32* getelementptr inbounds ([4 x [1 x [9 x i32]]], [4 x [1 x [9 x i32]]]* @func_1.l_2850, i32 0, i64 1, i64 0, i64 1), align 4, !tbaa !1
  %1915 = zext i32 %1914 to i64
  %1916 = icmp ne i64 %1913, %1915
  %1917 = zext i1 %1916 to i32
  %1918 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext -120, i32 %1917)
  %1919 = zext i8 %1918 to i32
  %1920 = icmp ne i32 %1919, 0
  br i1 %1920, label %1921, label %1925

; <label>:1921                                    ; preds = %1879
  %1922 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1923 = load i32, i32* %1922, align 4, !tbaa !1
  %1924 = icmp ne i32 %1923, 0
  br label %1925

; <label>:1925                                    ; preds = %1921, %1879
  %1926 = phi i1 [ false, %1879 ], [ %1924, %1921 ]
  %1927 = zext i1 %1926 to i32
  %1928 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %1929 = load i32, i32* %1928, align 4, !tbaa !1
  %1930 = xor i32 %1927, %1929
  %1931 = icmp ne i32 %1930, 0
  br i1 %1931, label %1932, label %1933

; <label>:1932                                    ; preds = %1925
  br label %1933

; <label>:1933                                    ; preds = %1932, %1925
  %1934 = phi i1 [ false, %1925 ], [ true, %1932 ]
  %1935 = zext i1 %1934 to i32
  %1936 = load i8*, i8** @g_2407, align 8, !tbaa !5
  %1937 = load i8, i8* %1936, align 1, !tbaa !9
  %1938 = zext i8 %1937 to i32
  %1939 = or i32 %1935, %1938
  %1940 = icmp ne i32 %1939, 0
  br i1 %1940, label %1941, label %2398

; <label>:1941                                    ; preds = %1933
  %1942 = bitcast i32**** %l_2933 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1942) #1
  store i32*** %l_2932, i32**** %l_2933, align 8, !tbaa !5
  %1943 = bitcast i16** %l_2936 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1943) #1
  store i16* @g_2937, i16** %l_2936, align 8, !tbaa !5
  %1944 = bitcast [9 x [5 x i16**]]* %l_2935 to i8*
  call void @llvm.lifetime.start(i64 360, i8* %1944) #1
  %1945 = getelementptr inbounds [9 x [5 x i16**]], [9 x [5 x i16**]]* %l_2935, i64 0, i64 0
  %1946 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1945, i64 0, i64 0
  store i16** %l_2936, i16*** %1946, !tbaa !5
  %1947 = getelementptr inbounds i16**, i16*** %1946, i64 1
  store i16** %l_2936, i16*** %1947, !tbaa !5
  %1948 = getelementptr inbounds i16**, i16*** %1947, i64 1
  store i16** %l_2936, i16*** %1948, !tbaa !5
  %1949 = getelementptr inbounds i16**, i16*** %1948, i64 1
  store i16** %l_2936, i16*** %1949, !tbaa !5
  %1950 = getelementptr inbounds i16**, i16*** %1949, i64 1
  store i16** %l_2936, i16*** %1950, !tbaa !5
  %1951 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1945, i64 1
  %1952 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1951, i64 0, i64 0
  store i16** %l_2936, i16*** %1952, !tbaa !5
  %1953 = getelementptr inbounds i16**, i16*** %1952, i64 1
  store i16** %l_2936, i16*** %1953, !tbaa !5
  %1954 = getelementptr inbounds i16**, i16*** %1953, i64 1
  store i16** %l_2936, i16*** %1954, !tbaa !5
  %1955 = getelementptr inbounds i16**, i16*** %1954, i64 1
  store i16** %l_2936, i16*** %1955, !tbaa !5
  %1956 = getelementptr inbounds i16**, i16*** %1955, i64 1
  store i16** %l_2936, i16*** %1956, !tbaa !5
  %1957 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1951, i64 1
  %1958 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1957, i64 0, i64 0
  store i16** %l_2936, i16*** %1958, !tbaa !5
  %1959 = getelementptr inbounds i16**, i16*** %1958, i64 1
  store i16** %l_2936, i16*** %1959, !tbaa !5
  %1960 = getelementptr inbounds i16**, i16*** %1959, i64 1
  store i16** %l_2936, i16*** %1960, !tbaa !5
  %1961 = getelementptr inbounds i16**, i16*** %1960, i64 1
  store i16** %l_2936, i16*** %1961, !tbaa !5
  %1962 = getelementptr inbounds i16**, i16*** %1961, i64 1
  store i16** %l_2936, i16*** %1962, !tbaa !5
  %1963 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1957, i64 1
  %1964 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1963, i64 0, i64 0
  store i16** %l_2936, i16*** %1964, !tbaa !5
  %1965 = getelementptr inbounds i16**, i16*** %1964, i64 1
  store i16** %l_2936, i16*** %1965, !tbaa !5
  %1966 = getelementptr inbounds i16**, i16*** %1965, i64 1
  store i16** %l_2936, i16*** %1966, !tbaa !5
  %1967 = getelementptr inbounds i16**, i16*** %1966, i64 1
  store i16** %l_2936, i16*** %1967, !tbaa !5
  %1968 = getelementptr inbounds i16**, i16*** %1967, i64 1
  store i16** %l_2936, i16*** %1968, !tbaa !5
  %1969 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1963, i64 1
  %1970 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1969, i64 0, i64 0
  store i16** %l_2936, i16*** %1970, !tbaa !5
  %1971 = getelementptr inbounds i16**, i16*** %1970, i64 1
  store i16** %l_2936, i16*** %1971, !tbaa !5
  %1972 = getelementptr inbounds i16**, i16*** %1971, i64 1
  store i16** %l_2936, i16*** %1972, !tbaa !5
  %1973 = getelementptr inbounds i16**, i16*** %1972, i64 1
  store i16** %l_2936, i16*** %1973, !tbaa !5
  %1974 = getelementptr inbounds i16**, i16*** %1973, i64 1
  store i16** %l_2936, i16*** %1974, !tbaa !5
  %1975 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1969, i64 1
  %1976 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1975, i64 0, i64 0
  store i16** %l_2936, i16*** %1976, !tbaa !5
  %1977 = getelementptr inbounds i16**, i16*** %1976, i64 1
  store i16** %l_2936, i16*** %1977, !tbaa !5
  %1978 = getelementptr inbounds i16**, i16*** %1977, i64 1
  store i16** %l_2936, i16*** %1978, !tbaa !5
  %1979 = getelementptr inbounds i16**, i16*** %1978, i64 1
  store i16** %l_2936, i16*** %1979, !tbaa !5
  %1980 = getelementptr inbounds i16**, i16*** %1979, i64 1
  store i16** %l_2936, i16*** %1980, !tbaa !5
  %1981 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1975, i64 1
  %1982 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1981, i64 0, i64 0
  store i16** %l_2936, i16*** %1982, !tbaa !5
  %1983 = getelementptr inbounds i16**, i16*** %1982, i64 1
  store i16** %l_2936, i16*** %1983, !tbaa !5
  %1984 = getelementptr inbounds i16**, i16*** %1983, i64 1
  store i16** %l_2936, i16*** %1984, !tbaa !5
  %1985 = getelementptr inbounds i16**, i16*** %1984, i64 1
  store i16** %l_2936, i16*** %1985, !tbaa !5
  %1986 = getelementptr inbounds i16**, i16*** %1985, i64 1
  store i16** %l_2936, i16*** %1986, !tbaa !5
  %1987 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1981, i64 1
  %1988 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1987, i64 0, i64 0
  store i16** %l_2936, i16*** %1988, !tbaa !5
  %1989 = getelementptr inbounds i16**, i16*** %1988, i64 1
  store i16** %l_2936, i16*** %1989, !tbaa !5
  %1990 = getelementptr inbounds i16**, i16*** %1989, i64 1
  store i16** %l_2936, i16*** %1990, !tbaa !5
  %1991 = getelementptr inbounds i16**, i16*** %1990, i64 1
  store i16** %l_2936, i16*** %1991, !tbaa !5
  %1992 = getelementptr inbounds i16**, i16*** %1991, i64 1
  store i16** %l_2936, i16*** %1992, !tbaa !5
  %1993 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1987, i64 1
  %1994 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1993, i64 0, i64 0
  store i16** %l_2936, i16*** %1994, !tbaa !5
  %1995 = getelementptr inbounds i16**, i16*** %1994, i64 1
  store i16** %l_2936, i16*** %1995, !tbaa !5
  %1996 = getelementptr inbounds i16**, i16*** %1995, i64 1
  store i16** %l_2936, i16*** %1996, !tbaa !5
  %1997 = getelementptr inbounds i16**, i16*** %1996, i64 1
  store i16** %l_2936, i16*** %1997, !tbaa !5
  %1998 = getelementptr inbounds i16**, i16*** %1997, i64 1
  store i16** %l_2936, i16*** %1998, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2949) #1
  store i8 -73, i8* %l_2949, align 1, !tbaa !9
  %1999 = bitcast i16****** %l_2953 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1999) #1
  store i16***** %l_2951, i16****** %l_2953, align 8, !tbaa !5
  %2000 = bitcast i32* %l_2962 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2000) #1
  store i32 -1945525877, i32* %l_2962, align 4, !tbaa !1
  %2001 = bitcast i64* %l_2983 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2001) #1
  store i64 -9, i64* %l_2983, align 8, !tbaa !7
  %2002 = bitcast i32* %i35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2002) #1
  %2003 = bitcast i32* %j36 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2003) #1
  store i16 0, i16* @g_79, align 2, !tbaa !10
  br label %2004

; <label>:2004                                    ; preds = %2012, %1941
  %2005 = load i16, i16* @g_79, align 2, !tbaa !10
  %2006 = zext i16 %2005 to i32
  %2007 = icmp slt i32 %2006, 10
  br i1 %2007, label %2008, label %2017

; <label>:2008                                    ; preds = %2004
  %2009 = load i16, i16* @g_79, align 2, !tbaa !10
  %2010 = zext i16 %2009 to i64
  %2011 = getelementptr inbounds [10 x i8], [10 x i8]* @g_200, i32 0, i64 %2010
  store i8 -1, i8* %2011, align 1, !tbaa !9
  br label %2012

; <label>:2012                                    ; preds = %2008
  %2013 = load i16, i16* @g_79, align 2, !tbaa !10
  %2014 = zext i16 %2013 to i32
  %2015 = add nsw i32 %2014, 1
  %2016 = trunc i32 %2015 to i16
  store i16 %2016, i16* @g_79, align 2, !tbaa !10
  br label %2004

; <label>:2017                                    ; preds = %2004
  %2018 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %2019 = load i32, i32* %2018, align 4, !tbaa !1
  %2020 = load i32**, i32*** %l_2932, align 8, !tbaa !5
  %2021 = load i32***, i32**** %l_2933, align 8, !tbaa !5
  store i32** %2020, i32*** %2021, align 8, !tbaa !5
  %2022 = load i64*, i64** @g_2587, align 8, !tbaa !5
  %2023 = load i64, i64* %2022, align 8, !tbaa !7
  %2024 = load i32**, i32*** @g_1767, align 8, !tbaa !5
  %2025 = load i32*, i32** %2024, align 8, !tbaa !5
  %2026 = load i32, i32* %2025, align 4, !tbaa !1
  %2027 = sext i32 %2026 to i64
  %2028 = xor i64 %2027, 1715396137
  %2029 = trunc i64 %2028 to i32
  store i32 %2029, i32* %2025, align 4, !tbaa !1
  %2030 = sext i32 %2029 to i64
  %2031 = icmp eq i64 4294967295, %2030
  %2032 = zext i1 %2031 to i32
  %2033 = load i8**, i8*** @g_262, align 8, !tbaa !5
  %2034 = load volatile i8*, i8** %2033, align 8, !tbaa !5
  %2035 = getelementptr inbounds [4 x i8], [4 x i8]* %l_2757, i32 0, i64 1
  %2036 = icmp eq i8* %2034, %2035
  %2037 = zext i1 %2036 to i32
  %2038 = sext i32 %2037 to i64
  %2039 = and i64 %2023, %2038
  %2040 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @func_1.l_2934, i32 0, i64 0), align 4, !tbaa !1
  %2041 = sext i32 %2040 to i64
  store i16* %l_2928, i16** %l_2938, align 8, !tbaa !5
  %2042 = icmp eq i16* %l_2928, %l_2869
  %2043 = zext i1 %2042 to i32
  %2044 = trunc i32 %2043 to i16
  %2045 = load i16*, i16** %l_2839, align 8, !tbaa !5
  store i16 %2044, i16* %2045, align 2, !tbaa !10
  %2046 = sext i16 %2044 to i64
  %2047 = icmp uge i64 %2046, 2
  %2048 = zext i1 %2047 to i32
  %2049 = sext i32 %2048 to i64
  %2050 = and i64 %2049, 145
  %2051 = icmp sgt i64 %2041, %2050
  %2052 = zext i1 %2051 to i32
  %2053 = load i16, i16* %l_2928, align 2, !tbaa !10
  %2054 = zext i16 %2053 to i32
  %2055 = load i32, i32* %l_2880, align 4, !tbaa !1
  %2056 = icmp sgt i32 %2054, %2055
  %2057 = zext i1 %2056 to i32
  %2058 = sext i32 %2057 to i64
  %2059 = and i64 %2058, 8
  %2060 = load i32**, i32*** getelementptr inbounds ([10 x [5 x [3 x i32**]]], [10 x [5 x [3 x i32**]]]* @func_1.l_2940, i32 0, i64 5, i64 3, i64 1), align 8, !tbaa !5
  %2061 = load i32***, i32**** %l_2922, align 8, !tbaa !5
  %2062 = load i32**, i32*** %2061, align 8, !tbaa !5
  %2063 = icmp eq i32** %2060, %2062
  %2064 = zext i1 %2063 to i32
  %2065 = sext i32 %2064 to i64
  %2066 = icmp uge i64 %2039, %2065
  %2067 = zext i1 %2066 to i32
  %2068 = load i8*, i8** @g_612, align 8, !tbaa !5
  %2069 = load i8, i8* %2068, align 1, !tbaa !9
  %2070 = sext i8 %2069 to i32
  %2071 = icmp sle i32 %2067, %2070
  %2072 = zext i1 %2071 to i32
  %2073 = icmp eq i32** %2020, null
  %2074 = zext i1 %2073 to i32
  %2075 = sext i32 %2074 to i64
  %2076 = xor i64 %2075, 4010144856
  %2077 = trunc i64 %2076 to i32
  store i32 %2077, i32* %l_2654, align 4, !tbaa !1
  %2078 = trunc i32 %2077 to i8
  %2079 = load i8*, i8** @g_255, align 8, !tbaa !5
  %2080 = load i8, i8* %2079, align 1, !tbaa !9
  %2081 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %2078, i8 signext %2080)
  %2082 = icmp ne i8 %2081, 0
  br i1 %2082, label %2083, label %2280

; <label>:2083                                    ; preds = %2017
  %2084 = bitcast i32* %l_2945 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2084) #1
  store i32 -163631782, i32* %l_2945, align 4, !tbaa !1
  %2085 = bitcast i32**** %l_2963 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2085) #1
  store i32*** @g_393, i32**** %l_2963, align 8, !tbaa !5
  %2086 = load i32, i32* %l_2945, align 4, !tbaa !1
  %2087 = sext i32 %2086 to i64
  %2088 = getelementptr inbounds [2 x [7 x [6 x i32]]], [2 x [7 x [6 x i32]]]* %l_2948, i32 0, i64 1
  %2089 = getelementptr inbounds [7 x [6 x i32]], [7 x [6 x i32]]* %2088, i32 0, i64 4
  %2090 = getelementptr inbounds [6 x i32], [6 x i32]* %2089, i32 0, i64 0
  %2091 = load i32, i32* %2090, align 4, !tbaa !1
  %2092 = zext i32 %2091 to i64
  %2093 = load i8, i8* %l_2949, align 1, !tbaa !9
  %2094 = zext i8 %2093 to i64
  %2095 = call i64 @safe_mod_func_int64_t_s_s(i64 %2092, i64 %2094)
  %2096 = call i64 @safe_sub_func_uint64_t_u_u(i64 %2087, i64 %2095)
  %2097 = load i16*****, i16****** %l_2950, align 8, !tbaa !5
  store i16***** %2097, i16****** %l_2953, align 8, !tbaa !5
  %2098 = load i32, i32* %l_2954, align 4, !tbaa !1
  %2099 = zext i32 %2098 to i64
  %2100 = load i32, i32* %l_2945, align 4, !tbaa !1
  %2101 = sext i32 %2100 to i64
  store i64 %2101, i64* %l_2957, align 8, !tbaa !7
  %2102 = trunc i64 %2101 to i16
  %2103 = load i8, i8* %l_18, align 1, !tbaa !9
  %2104 = load i32, i32* %l_2962, align 4, !tbaa !1
  %2105 = icmp eq i32 1, %2104
  br i1 %2105, label %2106, label %2107

; <label>:2106                                    ; preds = %2083
  br label %2107

; <label>:2107                                    ; preds = %2106, %2083
  %2108 = phi i1 [ false, %2083 ], [ false, %2106 ]
  %2109 = zext i1 %2108 to i32
  %2110 = load i32, i32* %l_2962, align 4, !tbaa !1
  %2111 = or i32 %2109, %2110
  %2112 = sext i32 %2111 to i64
  %2113 = icmp ne i64 %2112, 326553571
  %2114 = zext i1 %2113 to i32
  %2115 = load i32***, i32**** %l_2963, align 8, !tbaa !5
  %2116 = load i32****, i32***** @g_442, align 8, !tbaa !5
  %2117 = load i32***, i32**** %2116, align 8, !tbaa !5
  %2118 = icmp ne i32*** %2115, %2117
  %2119 = zext i1 %2118 to i32
  %2120 = trunc i32 %2119 to i8
  %2121 = load i8*, i8** @g_255, align 8, !tbaa !5
  %2122 = load i8, i8* %2121, align 1, !tbaa !9
  %2123 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %2120, i8 signext %2122)
  %2124 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %2123, i32 7)
  %2125 = sext i8 %2124 to i32
  %2126 = icmp ne i32 %2125, 0
  br i1 %2126, label %2128, label %2127

; <label>:2127                                    ; preds = %2107
  br label %2128

; <label>:2128                                    ; preds = %2127, %2107
  %2129 = phi i1 [ true, %2107 ], [ true, %2127 ]
  %2130 = zext i1 %2129 to i32
  %2131 = sext i32 %2130 to i64
  %2132 = load i64*, i64** %l_2653, align 8, !tbaa !5
  %2133 = load i64, i64* %2132, align 8, !tbaa !7
  %2134 = xor i64 %2133, %2131
  store i64 %2134, i64* %2132, align 8, !tbaa !7
  %2135 = load i32, i32* %l_2964, align 4, !tbaa !1
  %2136 = sext i32 %2135 to i64
  %2137 = icmp sgt i64 %2134, %2136
  %2138 = zext i1 %2137 to i32
  %2139 = load i32, i32* %l_2962, align 4, !tbaa !1
  %2140 = or i32 %2138, %2139
  %2141 = load i32***, i32**** %l_2963, align 8, !tbaa !5
  %2142 = load i32**, i32*** %2141, align 8, !tbaa !5
  %2143 = load i32*, i32** %2142, align 8, !tbaa !5
  %2144 = load i32, i32* %2143, align 4, !tbaa !1
  %2145 = icmp sle i32 %2140, %2144
  %2146 = zext i1 %2145 to i32
  %2147 = sext i32 %2146 to i64
  %2148 = and i64 %2147, 5445065618567992569
  %2149 = and i64 %2148, 6967484823960198775
  %2150 = trunc i64 %2149 to i16
  %2151 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %2102, i16 signext %2150)
  %2152 = sext i16 %2151 to i64
  %2153 = load i64*, i64** @g_477, align 8, !tbaa !5
  %2154 = load i64, i64* %2153, align 8, !tbaa !7
  %2155 = xor i64 %2152, %2154
  %2156 = icmp uge i64 %2099, %2155
  %2157 = zext i1 %2156 to i32
  %2158 = icmp ne i16***** %2097, %l_2684
  %2159 = zext i1 %2158 to i32
  %2160 = load i32, i32* %l_2964, align 4, !tbaa !1
  %2161 = load i32, i32* %l_2654, align 4, !tbaa !1
  %2162 = xor i32 %2161, %2160
  store i32 %2162, i32* %l_2654, align 4, !tbaa !1
  %2163 = sext i32 %2162 to i64
  %2164 = and i64 %2163, 1
  %2165 = trunc i64 %2164 to i16
  %2166 = load i32***, i32**** %l_2963, align 8, !tbaa !5
  %2167 = load i32**, i32*** %2166, align 8, !tbaa !5
  %2168 = load i32*, i32** %2167, align 8, !tbaa !5
  %2169 = load i32, i32* %2168, align 4, !tbaa !1
  %2170 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %2165, i32 %2169)
  %2171 = sext i16 %2170 to i32
  store i32 %2171, i32* %l_2511, align 4, !tbaa !1
  %2172 = load i32**, i32*** @g_393, align 8, !tbaa !5
  store i32* %l_2962, i32** %2172, align 8, !tbaa !5
  %2173 = load i8, i8* %l_18, align 1, !tbaa !9
  %2174 = load i32, i32* %l_2962, align 4, !tbaa !1
  %2175 = icmp ne i32 %2174, 0
  br i1 %2175, label %2177, label %2176

; <label>:2176                                    ; preds = %2128
  br label %2177

; <label>:2177                                    ; preds = %2176, %2128
  %2178 = phi i1 [ true, %2128 ], [ true, %2176 ]
  %2179 = zext i1 %2178 to i32
  %2180 = call i32 @safe_sub_func_int32_t_s_s(i32 -1092040419, i32 -6)
  %2181 = trunc i32 %2180 to i16
  %2182 = getelementptr inbounds [2 x [7 x [6 x i32]]], [2 x [7 x [6 x i32]]]* %l_2948, i32 0, i64 1
  %2183 = getelementptr inbounds [7 x [6 x i32]], [7 x [6 x i32]]* %2182, i32 0, i64 4
  %2184 = getelementptr inbounds [6 x i32], [6 x i32]* %2183, i32 0, i64 0
  %2185 = load i32, i32* %2184, align 4, !tbaa !1
  %2186 = load i32, i32* %l_2962, align 4, !tbaa !1
  %2187 = load volatile i16***, i16**** @g_1534, align 8, !tbaa !5
  %2188 = load volatile i16**, i16*** %2187, align 8, !tbaa !5
  %2189 = load i16*, i16** %2188, align 8, !tbaa !5
  %2190 = load volatile i16, i16* %2189, align 2, !tbaa !10
  %2191 = sext i16 %2190 to i32
  %2192 = icmp ne i32 %2191, 0
  br i1 %2192, label %2194, label %2193

; <label>:2193                                    ; preds = %2177
  br label %2194

; <label>:2194                                    ; preds = %2193, %2177
  %2195 = phi i1 [ true, %2177 ], [ true, %2193 ]
  %2196 = zext i1 %2195 to i32
  %2197 = trunc i32 %2196 to i8
  %2198 = load i8*, i8** @g_612, align 8, !tbaa !5
  %2199 = load i8, i8* %2198, align 1, !tbaa !9
  %2200 = sext i8 %2199 to i32
  %2201 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %2197, i32 %2200)
  %2202 = zext i8 %2201 to i32
  %2203 = icmp eq i32 %2186, %2202
  %2204 = zext i1 %2203 to i32
  %2205 = sext i32 %2204 to i64
  %2206 = icmp ne i64 %2205, 1
  %2207 = zext i1 %2206 to i32
  %2208 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext -6)
  %2209 = zext i8 %2208 to i64
  %2210 = load i64*, i64** @g_2587, align 8, !tbaa !5
  %2211 = load i64, i64* %2210, align 8, !tbaa !7
  %2212 = icmp ne i64 %2209, %2211
  %2213 = zext i1 %2212 to i32
  %2214 = sext i32 %2213 to i64
  %2215 = load i32, i32* getelementptr inbounds ([4 x [1 x [9 x i32]]], [4 x [1 x [9 x i32]]]* @func_1.l_2850, i32 0, i64 2, i64 0, i64 7), align 4, !tbaa !1
  %2216 = zext i32 %2215 to i64
  %2217 = call i64 @safe_sub_func_uint64_t_u_u(i64 %2214, i64 %2216)
  %2218 = trunc i64 %2217 to i32
  %2219 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %2181, i32 %2218)
  %2220 = sext i16 %2219 to i32
  %2221 = icmp ne i32 %2220, 0
  br i1 %2221, label %2222, label %2226

; <label>:2222                                    ; preds = %2194
  %2223 = load i8, i8* %l_2982, align 1, !tbaa !9
  %2224 = sext i8 %2223 to i32
  %2225 = icmp ne i32 %2224, 0
  br label %2226

; <label>:2226                                    ; preds = %2222, %2194
  %2227 = phi i1 [ false, %2194 ], [ %2225, %2222 ]
  %2228 = zext i1 %2227 to i32
  %2229 = load i32, i32* %l_2905, align 4, !tbaa !1
  %2230 = and i32 %2228, %2229
  %2231 = load i32, i32* getelementptr inbounds ([4 x [1 x [9 x i32]]], [4 x [1 x [9 x i32]]]* @func_1.l_2850, i32 0, i64 1, i64 0, i64 6), align 4, !tbaa !1
  %2232 = icmp eq i32 %2230, %2231
  %2233 = zext i1 %2232 to i32
  %2234 = sext i32 %2233 to i64
  %2235 = icmp ult i64 %2234, -7810552526082893712
  %2236 = zext i1 %2235 to i32
  %2237 = icmp sle i32 %2179, %2236
  %2238 = zext i1 %2237 to i32
  %2239 = sext i32 %2238 to i64
  %2240 = and i64 %2239, -9
  %2241 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %2173, i8 zeroext 90)
  %2242 = zext i8 %2241 to i64
  %2243 = icmp sle i64 %2242, 109
  %2244 = zext i1 %2243 to i32
  %2245 = load i32***, i32**** %l_2963, align 8, !tbaa !5
  %2246 = load i32**, i32*** %2245, align 8, !tbaa !5
  %2247 = load i32*, i32** %2246, align 8, !tbaa !5
  %2248 = load i32, i32* %2247, align 4, !tbaa !1
  %2249 = or i32 %2244, %2248
  %2250 = load i8**, i8*** @g_2406, align 8, !tbaa !5
  %2251 = load i8*, i8** %2250, align 8, !tbaa !5
  %2252 = load i8, i8* %2251, align 1, !tbaa !9
  %2253 = zext i8 %2252 to i32
  %2254 = icmp ne i32 %2253, 0
  br i1 %2254, label %2261, label %2255

; <label>:2255                                    ; preds = %2226
  %2256 = load i32***, i32**** %l_2963, align 8, !tbaa !5
  %2257 = load i32**, i32*** %2256, align 8, !tbaa !5
  %2258 = load i32*, i32** %2257, align 8, !tbaa !5
  %2259 = load i32, i32* %2258, align 4, !tbaa !1
  %2260 = icmp ne i32 %2259, 0
  br label %2261

; <label>:2261                                    ; preds = %2255, %2226
  %2262 = phi i1 [ true, %2226 ], [ %2260, %2255 ]
  %2263 = zext i1 %2262 to i32
  %2264 = trunc i32 %2263 to i16
  %2265 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @func_1.l_2934, i32 0, i64 0), align 4, !tbaa !1
  %2266 = trunc i32 %2265 to i16
  %2267 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %2264, i16 zeroext %2266)
  %2268 = trunc i16 %2267 to i8
  %2269 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %2268, i32 7)
  %2270 = sext i8 %2269 to i64
  %2271 = icmp ule i64 %2270, 4294967288
  %2272 = zext i1 %2271 to i32
  %2273 = load i32, i32* %l_2962, align 4, !tbaa !1
  %2274 = load i32**, i32*** @g_1767, align 8, !tbaa !5
  %2275 = load i32*, i32** %2274, align 8, !tbaa !5
  %2276 = load i32, i32* %2275, align 4, !tbaa !1
  %2277 = and i32 %2276, %2273
  store i32 %2277, i32* %2275, align 4, !tbaa !1
  %2278 = bitcast i32**** %l_2963 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2278) #1
  %2279 = bitcast i32* %l_2945 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2279) #1
  br label %2383

; <label>:2280                                    ; preds = %2017
  %2281 = bitcast i16* %l_3000 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2281) #1
  store i16 -21944, i16* %l_3000, align 2, !tbaa !10
  %2282 = load i32***, i32**** %l_2986, align 8, !tbaa !5
  %2283 = load i16, i16* %l_2987, align 2, !tbaa !10
  %2284 = load i32, i32* %l_2964, align 4, !tbaa !1
  %2285 = sext i32 %2284 to i64
  %2286 = load i32***, i32**** %l_2986, align 8, !tbaa !5
  %2287 = load i32**, i32*** %2286, align 8, !tbaa !5
  %2288 = load i32*, i32** %2287, align 8, !tbaa !5
  %2289 = load i32, i32* %2288, align 4, !tbaa !1
  %2290 = sext i32 %2289 to i64
  %2291 = load volatile i32**, i32*** @g_1885, align 8, !tbaa !5
  %2292 = load i32*, i32** %2291, align 8, !tbaa !5
  %2293 = load i32, i32* %2292, align 4, !tbaa !1
  %2294 = load i32***, i32**** %l_2986, align 8, !tbaa !5
  %2295 = load i32**, i32*** %2294, align 8, !tbaa !5
  %2296 = load i32*, i32** %2295, align 8, !tbaa !5
  %2297 = load i32, i32* %2296, align 4, !tbaa !1
  %2298 = call i32 @safe_mod_func_int32_t_s_s(i32 %2293, i32 %2297)
  %2299 = load i32, i32* %l_2962, align 4, !tbaa !1
  %2300 = and i32 %2298, %2299
  %2301 = load i32***, i32**** %l_2986, align 8, !tbaa !5
  %2302 = load i32**, i32*** %2301, align 8, !tbaa !5
  %2303 = load i32*, i32** %2302, align 8, !tbaa !5
  %2304 = load i32, i32* %2303, align 4, !tbaa !1
  %2305 = sext i32 %2304 to i64
  %2306 = icmp uge i64 %2305, -3
  %2307 = zext i1 %2306 to i32
  %2308 = getelementptr inbounds [10 x [7 x i16]], [10 x [7 x i16]]* %l_2999, i32 0, i64 3
  %2309 = getelementptr inbounds [7 x i16], [7 x i16]* %2308, i32 0, i64 2
  %2310 = load i16, i16* %2309, align 2, !tbaa !10
  %2311 = zext i16 %2310 to i32
  %2312 = xor i32 %2311, %2307
  %2313 = trunc i32 %2312 to i16
  store i16 %2313, i16* %2309, align 2, !tbaa !10
  %2314 = zext i16 %2313 to i32
  %2315 = xor i32 %2314, -1
  %2316 = icmp ne i32 %2315, 0
  %2317 = xor i1 %2316, true
  %2318 = zext i1 %2317 to i32
  %2319 = load i32*, i32** @g_290, align 8, !tbaa !5
  %2320 = load i32, i32* %2319, align 4, !tbaa !1
  %2321 = call i32 @safe_add_func_int32_t_s_s(i32 %2318, i32 %2320)
  %2322 = icmp ne i32 %2321, 0
  %2323 = xor i1 %2322, true
  %2324 = zext i1 %2323 to i32
  %2325 = call i32 @safe_sub_func_uint32_t_u_u(i32 %2300, i32 %2324)
  %2326 = icmp ne i32 %2325, 0
  br i1 %2326, label %2331, label %2327

; <label>:2327                                    ; preds = %2280
  %2328 = load i16, i16* %l_3000, align 2, !tbaa !10
  %2329 = zext i16 %2328 to i32
  %2330 = icmp ne i32 %2329, 0
  br label %2331

; <label>:2331                                    ; preds = %2327, %2280
  %2332 = phi i1 [ true, %2280 ], [ %2330, %2327 ]
  %2333 = zext i1 %2332 to i32
  %2334 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %2335 = load i32, i32* %2334, align 4, !tbaa !1
  %2336 = icmp eq i32 %2333, %2335
  %2337 = zext i1 %2336 to i32
  %2338 = load i8, i8* %l_2751, align 1, !tbaa !9
  %2339 = sext i8 %2338 to i32
  %2340 = call i32 @safe_div_func_uint32_t_u_u(i32 %2337, i32 %2339)
  %2341 = zext i32 %2340 to i64
  %2342 = and i64 211, %2341
  %2343 = and i64 %2290, %2342
  %2344 = icmp sge i64 %2285, %2343
  %2345 = zext i1 %2344 to i32
  %2346 = load i8, i8* %l_2949, align 1, !tbaa !9
  %2347 = zext i8 %2346 to i32
  %2348 = icmp sle i32 %2345, %2347
  %2349 = zext i1 %2348 to i32
  %2350 = load i32, i32* %l_3001, align 4, !tbaa !1
  %2351 = load i32****, i32***** @g_442, align 8, !tbaa !5
  %2352 = load i32***, i32**** %2351, align 8, !tbaa !5
  %2353 = icmp eq i32*** %2282, %2352
  %2354 = zext i1 %2353 to i32
  %2355 = load volatile i16***, i16**** @g_1534, align 8, !tbaa !5
  %2356 = load volatile i16**, i16*** %2355, align 8, !tbaa !5
  %2357 = load i16*, i16** %2356, align 8, !tbaa !5
  %2358 = load volatile i16, i16* %2357, align 2, !tbaa !10
  %2359 = sext i16 %2358 to i32
  %2360 = load i32***, i32**** %l_2986, align 8, !tbaa !5
  %2361 = load i32**, i32*** %2360, align 8, !tbaa !5
  %2362 = load i32*, i32** %2361, align 8, !tbaa !5
  %2363 = load i32, i32* %2362, align 4, !tbaa !1
  %2364 = xor i32 %2359, %2363
  %2365 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2392, i32 0, i64 0), align 4, !tbaa !1
  %2366 = icmp eq i32 %2364, %2365
  %2367 = zext i1 %2366 to i32
  %2368 = sext i32 %2367 to i64
  %2369 = call i64 @safe_add_func_uint64_t_u_u(i64 %2368, i64 -1)
  %2370 = load i32*, i32** @g_1414, align 8, !tbaa !5
  %2371 = load i32, i32* %2370, align 4, !tbaa !1
  %2372 = sext i32 %2371 to i64
  %2373 = or i64 %2372, %2369
  %2374 = trunc i64 %2373 to i32
  store i32 %2374, i32* %2370, align 4, !tbaa !1
  %2375 = load i32*, i32** @g_290, align 8, !tbaa !5
  %2376 = load i32, i32* %2375, align 4, !tbaa !1
  %2377 = icmp ne i32 %2376, 0
  br i1 %2377, label %2378, label %2379

; <label>:2378                                    ; preds = %2331
  store i32 51, i32* %2
  br label %2380

; <label>:2379                                    ; preds = %2331
  store i32 0, i32* %2
  br label %2380

; <label>:2380                                    ; preds = %2379, %2378
  %2381 = bitcast i16* %l_3000 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2381) #1
  %cleanup.dest.37 = load i32, i32* %2
  switch i32 %cleanup.dest.37, label %2388 [
    i32 0, label %2382
  ]

; <label>:2382                                    ; preds = %2380
  br label %2383

; <label>:2383                                    ; preds = %2382, %2261
  %2384 = load volatile i32***, i32**** @g_392, align 8, !tbaa !5
  %2385 = load i32**, i32*** %2384, align 8, !tbaa !5
  %2386 = load i32*, i32** %2385, align 8, !tbaa !5
  %2387 = load i32**, i32*** @g_393, align 8, !tbaa !5
  store i32* %2386, i32** %2387, align 8, !tbaa !5
  store i32 0, i32* %2
  br label %2388

; <label>:2388                                    ; preds = %2383, %2380
  %2389 = bitcast i32* %j36 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2389) #1
  %2390 = bitcast i32* %i35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2390) #1
  %2391 = bitcast i64* %l_2983 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2391) #1
  %2392 = bitcast i32* %l_2962 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2392) #1
  %2393 = bitcast i16****** %l_2953 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2393) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2949) #1
  %2394 = bitcast [9 x [5 x i16**]]* %l_2935 to i8*
  call void @llvm.lifetime.end(i64 360, i8* %2394) #1
  %2395 = bitcast i16** %l_2936 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2395) #1
  %2396 = bitcast i32**** %l_2933 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2396) #1
  %cleanup.dest.38 = load i32, i32* %2
  switch i32 %cleanup.dest.38, label %2404 [
    i32 0, label %2397
  ]

; <label>:2397                                    ; preds = %2388
  br label %2400

; <label>:2398                                    ; preds = %1933
  %2399 = load i32, i32* %l_2654, align 4, !tbaa !1
  store i32 %2399, i32* %1
  store i32 1, i32* %2
  br label %2404

; <label>:2400                                    ; preds = %2397
  %2401 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2680, i32 0, i64 1
  %2402 = load i32***, i32**** %l_2986, align 8, !tbaa !5
  %2403 = load i32**, i32*** %2402, align 8, !tbaa !5
  store i32* %2401, i32** %2403, align 8, !tbaa !5
  store i32* %2401, i32** %l_2740, align 8, !tbaa !5
  store i32 0, i32* %2
  br label %2404

; <label>:2404                                    ; preds = %2400, %2398, %2388
  %2405 = bitcast i32* %j33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2405) #1
  %2406 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2406) #1
  %2407 = bitcast [8 x [9 x i32**]]* %l_3002 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %2407) #1
  %2408 = bitcast i32* %l_3001 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2408) #1
  %2409 = bitcast [10 x [7 x i16]]* %l_2999 to i8*
  call void @llvm.lifetime.end(i64 140, i8* %2409) #1
  %2410 = bitcast i32* %l_2964 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2410) #1
  %2411 = bitcast i32* %l_2954 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2411) #1
  %2412 = bitcast i16** %l_2938 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2412) #1
  %2413 = bitcast [10 x i32*****]* %l_2924 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %2413) #1
  %2414 = bitcast i32** %l_2911 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2414) #1
  %2415 = bitcast i32* %l_2903 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2415) #1
  %2416 = bitcast i32* %l_2880 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2416) #1
  %2417 = bitcast [3 x [8 x i32**]]* %l_2873 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %2417) #1
  %2418 = bitcast i32* %l_2872 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2418) #1
  %cleanup.dest.39 = load i32, i32* %2
  switch i32 %cleanup.dest.39, label %2424 [
    i32 0, label %2419
    i32 51, label %2423
  ]

; <label>:2419                                    ; preds = %2404
  br label %2420

; <label>:2420                                    ; preds = %2419
  %2421 = load i8, i8* @g_4, align 1, !tbaa !9
  %2422 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %2421, i8 zeroext 7)
  store i8 %2422, i8* @g_4, align 1, !tbaa !9
  br label %1587

; <label>:2423                                    ; preds = %2404, %1587
  store i32 0, i32* %2
  br label %2424

; <label>:2424                                    ; preds = %2423, %2404, %1574
  %2425 = bitcast i32* %k17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2425) #1
  %2426 = bitcast i32* %j16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2426) #1
  %2427 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2427) #1
  %2428 = bitcast i16* %l_2987 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2428) #1
  %2429 = bitcast i32**** %l_2986 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2429) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2982) #1
  %2430 = bitcast i16****** %l_2950 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2430) #1
  %2431 = bitcast i16***** %l_2951 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2431) #1
  %2432 = bitcast i16**** %l_2952 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2432) #1
  %2433 = bitcast [2 x [7 x [6 x i32]]]* %l_2948 to i8*
  call void @llvm.lifetime.end(i64 336, i8* %2433) #1
  %2434 = bitcast [3 x i32]* %l_2906 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %2434) #1
  %2435 = bitcast i32* %l_2905 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2435) #1
  %2436 = bitcast i32* %l_2868 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2436) #1
  %2437 = bitcast i8** %l_2841 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2437) #1
  %2438 = bitcast i16** %l_2839 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2438) #1
  %2439 = bitcast i32* %l_2811 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2439) #1
  %cleanup.dest.40 = load i32, i32* %2
  switch i32 %cleanup.dest.40, label %2549 [
    i32 0, label %2440
  ]

; <label>:2440                                    ; preds = %2424
  br label %2441

; <label>:2441                                    ; preds = %2440, %1140
  %2442 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %2443 = load i32, i32* %2442, align 4, !tbaa !1
  %2444 = load i8, i8* %l_3013, align 1, !tbaa !9
  %2445 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext 0, i8 signext %2444)
  %2446 = load i8, i8* %l_18, align 1, !tbaa !9
  %2447 = zext i8 %2446 to i32
  %2448 = and i32 %2443, %2447
  %2449 = sext i32 %2448 to i64
  store i64 %2449, i64* %l_3015, align 8, !tbaa !7
  %2450 = trunc i64 %2449 to i8
  %2451 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %2452 = load i32, i32* %2451, align 4, !tbaa !1
  %2453 = load i32*, i32** %l_2740, align 8, !tbaa !5
  %2454 = load i32, i32* %2453, align 4, !tbaa !1
  %2455 = icmp sge i32 %2452, %2454
  %2456 = zext i1 %2455 to i32
  %2457 = trunc i32 %2456 to i8
  %2458 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %2457, i32 3)
  %2459 = load i8, i8* %l_2751, align 1, !tbaa !9
  %2460 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %2450, i8 zeroext %2459)
  %2461 = zext i8 %2460 to i32
  %2462 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext 1, i32 %2461)
  %2463 = zext i8 %2462 to i32
  %2464 = icmp slt i32 %2463, 0
  %2465 = zext i1 %2464 to i32
  %2466 = load i32, i32* %l_2654, align 4, !tbaa !1
  %2467 = or i32 %2465, %2466
  %2468 = sext i32 %2467 to i64
  %2469 = load i64*, i64** @g_2587, align 8, !tbaa !5
  %2470 = load i64, i64* %2469, align 8, !tbaa !7
  %2471 = call i64 @safe_mod_func_int64_t_s_s(i64 %2468, i64 %2470)
  %2472 = icmp sle i64 0, %2471
  %2473 = zext i1 %2472 to i32
  %2474 = load i32*, i32** %l_2740, align 8, !tbaa !5
  store i32 %2473, i32* %2474, align 4, !tbaa !1
  %2475 = load i8, i8* %l_3022, align 1, !tbaa !9
  %2476 = add i8 %2475, 1
  store i8 %2476, i8* %l_3022, align 1, !tbaa !9
  %2477 = load i16, i16* %l_2928, align 2, !tbaa !10
  %2478 = load i16***, i16**** @g_2797, align 8, !tbaa !5
  %2479 = load i16**, i16*** %2478, align 8, !tbaa !5
  %2480 = load i16***, i16**** @g_2797, align 8, !tbaa !5
  %2481 = load i16**, i16*** %2480, align 8, !tbaa !5
  %2482 = icmp eq i16** %2479, %2481
  %2483 = zext i1 %2482 to i32
  %2484 = xor i32 %2483, -1
  %2485 = load i32, i32* %l_2654, align 4, !tbaa !1
  %2486 = icmp ne i32 %2485, 0
  br i1 %2486, label %2487, label %2537

; <label>:2487                                    ; preds = %2441
  %2488 = load i32**, i32*** %l_2923, align 8, !tbaa !5
  %2489 = load i32*, i32** %2488, align 8, !tbaa !5
  store i32 840323882, i32* %2489, align 4, !tbaa !1
  %2490 = load i8****, i8***** %l_2657, align 8, !tbaa !5
  %2491 = load i8***, i8**** %2490, align 8, !tbaa !5
  %2492 = load i8****, i8***** %l_2657, align 8, !tbaa !5
  %2493 = load i8***, i8**** %2492, align 8, !tbaa !5
  %2494 = icmp ne i8*** %2491, %2493
  %2495 = zext i1 %2494 to i32
  %2496 = load i8, i8* %l_18, align 1, !tbaa !9
  %2497 = zext i8 %2496 to i16
  %2498 = getelementptr inbounds [6 x [4 x i8]], [6 x [4 x i8]]* %l_3032, i32 0, i64 3
  %2499 = getelementptr inbounds [4 x i8], [4 x i8]* %2498, i32 0, i64 1
  %2500 = load i8, i8* %2499, align 1, !tbaa !9
  %2501 = sext i8 %2500 to i16
  %2502 = load i16*, i16** %l_3033, align 8, !tbaa !5
  store i16 %2501, i16* %2502, align 2, !tbaa !10
  %2503 = sext i16 %2501 to i64
  %2504 = icmp sgt i64 %2503, 9896
  %2505 = zext i1 %2504 to i32
  %2506 = load i8, i8* %l_3013, align 1, !tbaa !9
  %2507 = sext i8 %2506 to i32
  %2508 = icmp ne i32 %2505, %2507
  %2509 = zext i1 %2508 to i32
  %2510 = trunc i32 %2509 to i16
  %2511 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %2497, i16 signext %2510)
  %2512 = load i64, i64* @g_1019, align 8, !tbaa !7
  %2513 = trunc i64 %2512 to i16
  %2514 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %2511, i16 zeroext %2513)
  %2515 = zext i16 %2514 to i32
  %2516 = load i32, i32* %l_2654, align 4, !tbaa !1
  %2517 = icmp eq i32 %2515, %2516
  %2518 = zext i1 %2517 to i32
  %2519 = xor i32 %2495, %2518
  %2520 = sext i32 %2519 to i64
  %2521 = load i8, i8* %l_18, align 1, !tbaa !9
  %2522 = zext i8 %2521 to i64
  %2523 = call i64 @safe_div_func_int64_t_s_s(i64 %2520, i64 %2522)
  %2524 = load i8, i8* %l_3013, align 1, !tbaa !9
  %2525 = sext i8 %2524 to i64
  %2526 = icmp sle i64 %2523, %2525
  %2527 = zext i1 %2526 to i32
  %2528 = sext i32 %2527 to i64
  %2529 = load i64, i64* %l_3034, align 8, !tbaa !7
  %2530 = icmp uge i64 %2528, %2529
  %2531 = zext i1 %2530 to i32
  %2532 = load i8**, i8*** @g_2406, align 8, !tbaa !5
  %2533 = load i8*, i8** %2532, align 8, !tbaa !5
  %2534 = load i8, i8* %2533, align 1, !tbaa !9
  %2535 = zext i8 %2534 to i32
  %2536 = icmp ne i32 %2535, 0
  br label %2537

; <label>:2537                                    ; preds = %2487, %2441
  %2538 = phi i1 [ false, %2441 ], [ %2536, %2487 ]
  %2539 = zext i1 %2538 to i32
  %2540 = icmp sle i32 %2484, %2539
  %2541 = zext i1 %2540 to i32
  %2542 = load volatile i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_2397, i32 0, i64 5), align 4, !tbaa !1
  %2543 = icmp ult i32 %2541, %2542
  %2544 = zext i1 %2543 to i32
  %2545 = load i32*, i32** %l_3019, align 8, !tbaa !5
  store i32 %2544, i32* %2545, align 4, !tbaa !1
  %2546 = getelementptr inbounds [5 x i32], [5 x i32]* %l_3021, i32 0, i64 1
  %2547 = load i32, i32* %2546, align 4, !tbaa !1
  %2548 = and i32 %2547, %2544
  store i32 %2548, i32* %2546, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %2549

; <label>:2549                                    ; preds = %2537, %2424, %1127
  %2550 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2550) #1
  %2551 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2551) #1
  %2552 = bitcast i64* %l_3034 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2552) #1
  %2553 = bitcast i16** %l_3033 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2553) #1
  %2554 = bitcast [6 x [4 x i8]]* %l_3032 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %2554) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3022) #1
  %2555 = bitcast [6 x i32*]* %l_3020 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %2555) #1
  %2556 = bitcast i32** %l_3019 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2556) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3018) #1
  %2557 = bitcast [7 x i8*]* %l_3014 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %2557) #1
  %2558 = bitcast i64* %l_2957 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2558) #1
  %2559 = bitcast i32*** %l_2932 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2559) #1
  %2560 = bitcast [8 x i32****]* %l_2925 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %2560) #1
  %2561 = bitcast i16* %l_2869 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2561) #1
  %2562 = bitcast [6 x i16]* %l_2848 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %2562) #1
  %2563 = bitcast i32* %l_2813 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2563) #1
  %2564 = bitcast [4 x i8]* %l_2757 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2564) #1
  %2565 = bitcast i32** %l_2740 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2565) #1
  %2566 = bitcast [5 x i32]* %l_2680 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %2566) #1
  %2567 = bitcast i8***** %l_2657 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2567) #1
  %2568 = bitcast i8**** %l_2658 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2568) #1
  %cleanup.dest.41 = load i32, i32* %2
  switch i32 %cleanup.dest.41, label %2627 [
    i32 0, label %2569
  ]

; <label>:2569                                    ; preds = %2549
  br label %2622

; <label>:2570                                    ; preds = %313
  %2571 = bitcast i32* %i42 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2571) #1
  %2572 = load i16*, i16** getelementptr inbounds ([2 x i16*], [2 x i16*]* @func_1.l_3035, i32 0, i64 0), align 8, !tbaa !5
  %2573 = load i16**, i16*** @g_2798, align 8, !tbaa !5
  %2574 = load i16*, i16** %2573, align 8, !tbaa !5
  %2575 = icmp ne i16* %2572, %2574
  %2576 = zext i1 %2575 to i32
  %2577 = load i32*, i32** @g_1414, align 8, !tbaa !5
  store i32 %2576, i32* %2577, align 4, !tbaa !1
  store i32 0, i32* @g_984, align 4, !tbaa !1
  br label %2578

; <label>:2578                                    ; preds = %2614, %2570
  %2579 = load i32, i32* @g_984, align 4, !tbaa !1
  %2580 = icmp ule i32 %2579, 39
  br i1 %2580, label %2581, label %2617

; <label>:2581                                    ; preds = %2578
  %2582 = bitcast [2 x i16]* %l_3038 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2582) #1
  %2583 = bitcast i16* %l_3043 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2583) #1
  store i16 -22182, i16* %l_3043, align 2, !tbaa !10
  %2584 = bitcast i32* %i43 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2584) #1
  store i32 0, i32* %i43, align 4, !tbaa !1
  br label %2585

; <label>:2585                                    ; preds = %2592, %2581
  %2586 = load i32, i32* %i43, align 4, !tbaa !1
  %2587 = icmp slt i32 %2586, 2
  br i1 %2587, label %2588, label %2595

; <label>:2588                                    ; preds = %2585
  %2589 = load i32, i32* %i43, align 4, !tbaa !1
  %2590 = sext i32 %2589 to i64
  %2591 = getelementptr inbounds [2 x i16], [2 x i16]* %l_3038, i32 0, i64 %2590
  store i16 1, i16* %2591, align 2, !tbaa !10
  br label %2592

; <label>:2592                                    ; preds = %2588
  %2593 = load i32, i32* %i43, align 4, !tbaa !1
  %2594 = add nsw i32 %2593, 1
  store i32 %2594, i32* %i43, align 4, !tbaa !1
  br label %2585

; <label>:2595                                    ; preds = %2585
  %2596 = getelementptr inbounds [2 x i16], [2 x i16]* %l_3038, i32 0, i64 0
  %2597 = load i16, i16* %2596, align 2, !tbaa !10
  %2598 = add i16 %2597, -1
  store i16 %2598, i16* %2596, align 2, !tbaa !10
  store i64 -26, i64* @g_363, align 8, !tbaa !7
  br label %2599

; <label>:2599                                    ; preds = %2605, %2595
  %2600 = load i64, i64* @g_363, align 8, !tbaa !7
  %2601 = icmp ule i64 %2600, 28
  br i1 %2601, label %2602, label %2608

; <label>:2602                                    ; preds = %2599
  %2603 = load i16, i16* %l_3043, align 2, !tbaa !10
  %2604 = sext i16 %2603 to i32
  store i32 %2604, i32* %1
  store i32 1, i32* %2
  br label %2609
                                                  ; No predecessors!
  %2606 = load i64, i64* @g_363, align 8, !tbaa !7
  %2607 = call i64 @safe_add_func_int64_t_s_s(i64 %2606, i64 4)
  store i64 %2607, i64* @g_363, align 8, !tbaa !7
  br label %2599

; <label>:2608                                    ; preds = %2599
  store i32 0, i32* %2
  br label %2609

; <label>:2609                                    ; preds = %2608, %2602
  %2610 = bitcast i32* %i43 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2610) #1
  %2611 = bitcast i16* %l_3043 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2611) #1
  %2612 = bitcast [2 x i16]* %l_3038 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2612) #1
  %cleanup.dest.44 = load i32, i32* %2
  switch i32 %cleanup.dest.44, label %2620 [
    i32 0, label %2613
  ]

; <label>:2613                                    ; preds = %2609
  br label %2614

; <label>:2614                                    ; preds = %2613
  %2615 = load i32, i32* @g_984, align 4, !tbaa !1
  %2616 = call i32 @safe_add_func_int32_t_s_s(i32 %2615, i32 9)
  store i32 %2616, i32* @g_984, align 4, !tbaa !1
  br label %2578

; <label>:2617                                    ; preds = %2578
  %2618 = load volatile i32*, i32** @g_889, align 8, !tbaa !5
  %2619 = load i32, i32* %2618, align 4, !tbaa !1
  store i32 %2619, i32* %1
  store i32 1, i32* %2
  br label %2620

; <label>:2620                                    ; preds = %2617, %2609
  %2621 = bitcast i32* %i42 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2621) #1
  br label %2627

; <label>:2622                                    ; preds = %2569
  %2623 = getelementptr inbounds [5 x i32], [5 x i32]* %l_3021, i32 0, i64 2
  %2624 = load i32**, i32*** @g_393, align 8, !tbaa !5
  store i32* %2623, i32** %2624, align 8, !tbaa !5
  %2625 = load i32*, i32** @g_818, align 8, !tbaa !5
  %2626 = load i32, i32* %2625, align 4, !tbaa !1
  store i32 %2626, i32* %1
  store i32 1, i32* %2
  br label %2627

; <label>:2627                                    ; preds = %2622, %2620, %2549, %205
  %2628 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2628) #1
  %2629 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2629) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3044) #1
  %2630 = bitcast [5 x i32]* %l_3021 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %2630) #1
  %2631 = bitcast i64* %l_3015 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2631) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3013) #1
  %2632 = bitcast i64* %l_2929 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2632) #1
  %2633 = bitcast i16* %l_2928 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2633) #1
  %2634 = bitcast i32***** %l_2921 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2634) #1
  %2635 = bitcast i32**** %l_2922 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2635) #1
  %2636 = bitcast i32*** %l_2923 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2636) #1
  %2637 = bitcast i8*** %l_2773 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2637) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2751) #1
  %2638 = bitcast i16***** %l_2684 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2638) #1
  %2639 = bitcast [5 x [8 x i16***]]* %l_2685 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %2639) #1
  %2640 = bitcast [7 x i16**]* %l_2686 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %2640) #1
  %2641 = bitcast i16** %l_2687 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2641) #1
  %2642 = bitcast i32* %l_2654 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2642) #1
  %2643 = bitcast i64** %l_2653 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2643) #1
  %2644 = bitcast i64**** %l_2648 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2644) #1
  %2645 = bitcast i64***** %l_2647 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2645) #1
  %2646 = bitcast i64**** %l_2646 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2646) #1
  %2647 = bitcast i32***** %l_2597 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2647) #1
  %2648 = bitcast i32**** %l_2598 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2648) #1
  %2649 = bitcast i32* %l_2541 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2649) #1
  %2650 = bitcast i32* %l_2511 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2650) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_18) #1
  %2651 = load i32, i32* %1
  ret i32 %2651

; <label>:2652                                    ; preds = %1266
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
