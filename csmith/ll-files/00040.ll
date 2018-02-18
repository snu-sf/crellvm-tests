; ModuleID = '00040.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { i24 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 1370306668, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_35 = internal global [6 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"g_35[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"g_60[i].f0\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"g_60[i].f1\00", align 1
@g_62 = internal global i16 7, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_62\00", align 1
@g_64 = internal global [5 x [2 x i8]] [[2 x i8] c"\00\B9", [2 x i8] c"\98\98", [2 x i8] c"\98\B9", [2 x i8] c"\00\FF", [2 x i8] c"\B9\FF"], align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"g_64[i][j]\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_86 = internal global i64 -4019025494536436196, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"g_86\00", align 1
@g_87 = internal global i16 -6, align 2
@.str.10 = private unnamed_addr constant [5 x i8] c"g_87\00", align 1
@g_100 = internal global i32 -1, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_100\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"g_106[i][j].f0\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"g_106[i][j].f1\00", align 1
@g_131 = internal global i8 -10, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_131\00", align 1
@g_142 = internal global i16 0, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c"g_142\00", align 1
@g_151 = internal global i32 1640606930, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_151\00", align 1
@g_164 = internal global i16 1, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_164\00", align 1
@g_165 = internal global i8 33, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_165\00", align 1
@g_235 = internal global i64 0, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"g_235\00", align 1
@g_272 = internal global i32 -1218650306, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_272\00", align 1
@g_308 = internal global i16 2, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_308\00", align 1
@g_353 = internal global i32 1, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_353\00", align 1
@g_391 = internal global i8 1, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_391\00", align 1
@g_519 = internal global i32 984121529, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_519\00", align 1
@g_634 = internal global i16 -21618, align 2
@.str.25 = private unnamed_addr constant [6 x i8] c"g_634\00", align 1
@g_660 = internal global i32 -1, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_660\00", align 1
@g_730 = internal global i64 1, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"g_730\00", align 1
@g_784 = internal global i32 557978489, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_784\00", align 1
@g_811 = internal global i32 -567325175, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_811\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_909\00", align 1
@g_1074 = internal global i8 0, align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1074\00", align 1
@g_1084 = internal global i16 5909, align 2
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1084\00", align 1
@g_1319 = internal global i32 8, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1319\00", align 1
@g_1360 = internal global [7 x [10 x [3 x i64]]] [[10 x [3 x i64]] [[3 x i64] [i64 7362126159594772300, i64 0, i64 -6126840064581486012], [3 x i64] [i64 -6960494958944899834, i64 -1068466537762868185, i64 -8871380503008433508], [3 x i64] [i64 4227545962908997881, i64 -1813197176589681119, i64 0], [3 x i64] [i64 0, i64 -6972131751090385962, i64 -1], [3 x i64] [i64 1221544533143151227, i64 7541314577313398214, i64 0], [3 x i64] [i64 3530884281740452355, i64 -6972131751090385962, i64 5877587518194704339], [3 x i64] [i64 -1813197176589681119, i64 -1813197176589681119, i64 -2159465870256246564], [3 x i64] [i64 1, i64 -1068466537762868185, i64 0], [3 x i64] [i64 7491663226432167342, i64 0, i64 -2], [3 x i64] [i64 3530884281740452355, i64 -4202097669771089088, i64 -8871380503008433508]], [10 x [3 x i64]] [[3 x i64] [i64 0, i64 7491663226432167342, i64 -2], [3 x i64] [i64 0, i64 -1, i64 0], [3 x i64] [i64 1, i64 7541314577313398214, i64 -2159465870256246564], [3 x i64] [i64 -6960494958944899834, i64 0, i64 5877587518194704339], [3 x i64] [i64 1, i64 7491663226432167342, i64 0], [3 x i64] [i64 1, i64 -3151749429827382459, i64 -1], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 -6960494958944899834, i64 0, i64 -8871380503008433508], [3 x i64] [i64 1, i64 -1813197176589681119, i64 -6126840064581486012], [3 x i64] [i64 0, i64 -1, i64 -1]], [10 x [3 x i64]] [[3 x i64] [i64 0, i64 7541314577313398214, i64 -2770414574924896292], [3 x i64] [i64 3530884281740452355, i64 -1, i64 5877587518194704339], [3 x i64] [i64 7491663226432167342, i64 -1813197176589681119, i64 -9042020625084991534], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 -1813197176589681119, i64 0, i64 7541314577313398214], [3 x i64] [i64 3530884281740452355, i64 -3151749429827382459, i64 -8871380503008433508], [3 x i64] [i64 1221544533143151227, i64 7491663226432167342, i64 7541314577313398214], [3 x i64] zeroinitializer, [3 x i64] [i64 4227545962908997881, i64 7541314577313398214, i64 -9042020625084991534], [3 x i64] [i64 -6960494958944899834, i64 -1, i64 5877587518194704339]], [10 x [3 x i64]] [[3 x i64] [i64 7362126159594772300, i64 7491663226432167342, i64 -2770414574924896292], [3 x i64] [i64 1, i64 -4202097669771089088, i64 -1], [3 x i64] [i64 7362126159594772300, i64 0, i64 -6126840064581486012], [3 x i64] [i64 -6960494958944899834, i64 -1068466537762868185, i64 -8871380503008433508], [3 x i64] [i64 4227545962908997881, i64 -1813197176589681119, i64 0], [3 x i64] [i64 0, i64 -6972131751090385962, i64 -1], [3 x i64] [i64 1221544533143151227, i64 7541314577313398214, i64 0], [3 x i64] [i64 3530884281740452355, i64 -6972131751090385962, i64 5877587518194704339], [3 x i64] [i64 -1813197176589681119, i64 -1813197176589681119, i64 -2159465870256246564], [3 x i64] [i64 1, i64 -1068466537762868185, i64 0]], [10 x [3 x i64]] [[3 x i64] [i64 7491663226432167342, i64 0, i64 -2], [3 x i64] [i64 3530884281740452355, i64 -4202097669771089088, i64 -8871380503008433508], [3 x i64] [i64 0, i64 7491663226432167342, i64 -2], [3 x i64] [i64 0, i64 -1, i64 0], [3 x i64] [i64 1, i64 7541314577313398214, i64 -2159465870256246564], [3 x i64] [i64 -6960494958944899834, i64 0, i64 5877587518194704339], [3 x i64] [i64 1, i64 7491663226432167342, i64 0], [3 x i64] [i64 1, i64 -3151749429827382459, i64 -1], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 -6960494958944899834, i64 0, i64 -8871380503008433508]], [10 x [3 x i64]] [[3 x i64] [i64 1, i64 -1813197176589681119, i64 -6126840064581486012], [3 x i64] [i64 0, i64 -1, i64 -1], [3 x i64] [i64 0, i64 7541314577313398214, i64 -2770414574924896292], [3 x i64] [i64 3530884281740452355, i64 -1, i64 5877587518194704339], [3 x i64] [i64 7491663226432167342, i64 -1813197176589681119, i64 -9042020625084991534], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 -1813197176589681119, i64 0, i64 7541314577313398214], [3 x i64] [i64 3530884281740452355, i64 -3151749429827382459, i64 -8871380503008433508], [3 x i64] [i64 1221544533143151227, i64 7491663226432167342, i64 7541314577313398214], [3 x i64] zeroinitializer], [10 x [3 x i64]] [[3 x i64] [i64 4227545962908997881, i64 7541314577313398214, i64 -9042020625084991534], [3 x i64] [i64 -6960494958944899834, i64 -1, i64 5877587518194704339], [3 x i64] [i64 7362126159594772300, i64 7491663226432167342, i64 -2770414574924896292], [3 x i64] [i64 1, i64 -4202097669771089088, i64 -1], [3 x i64] [i64 7362126159594772300, i64 0, i64 -6126840064581486012], [3 x i64] [i64 -6960494958944899834, i64 -1068466537762868185, i64 -8871380503008433508], [3 x i64] [i64 4227545962908997881, i64 -1813197176589681119, i64 0], [3 x i64] [i64 0, i64 -6972131751090385962, i64 -1], [3 x i64] [i64 1221544533143151227, i64 7541314577313398214, i64 0], [3 x i64] [i64 3530884281740452355, i64 -6972131751090385962, i64 5877587518194704339]]], align 16
@.str.34 = private unnamed_addr constant [16 x i8] c"g_1360[i][j][k]\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_1523 = internal global i32 -1171068208, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1523\00", align 1
@g_2046 = internal global i64 -1426621044068506027, align 8
@.str.37 = private unnamed_addr constant [7 x i8] c"g_2046\00", align 1
@g_2065 = internal global i8 -3, align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"g_2065\00", align 1
@g_2092 = internal global i8 0, align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"g_2092\00", align 1
@g_2242 = internal global i64 4661731847715399332, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"g_2242\00", align 1
@g_2303 = internal global [3 x i16] [i16 4, i16 4, i16 4], align 2
@.str.41 = private unnamed_addr constant [10 x i8] c"g_2303[i]\00", align 1
@g_2502 = internal global i64 3224233626020874435, align 8
@.str.42 = private unnamed_addr constant [7 x i8] c"g_2502\00", align 1
@g_2528 = internal global i32 442869768, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"g_2528\00", align 1
@g_2574 = internal global i32 231028737, align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"g_2574\00", align 1
@g_2712 = internal global i16 0, align 2
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2712\00", align 1
@g_2792 = internal global i16 -1236, align 2
@.str.46 = private unnamed_addr constant [7 x i8] c"g_2792\00", align 1
@g_2944 = internal global [2 x i64] [i64 -867243182530479791, i64 -867243182530479791], align 16
@.str.47 = private unnamed_addr constant [10 x i8] c"g_2944[i]\00", align 1
@g_2988 = internal global [1 x [6 x i32]] [[6 x i32] [i32 485358829, i32 1484505942, i32 485358829, i32 485358829, i32 1484505942, i32 485358829]], align 16
@.str.48 = private unnamed_addr constant [13 x i8] c"g_2988[i][j]\00", align 1
@g_3233 = internal global i16 18119, align 2
@.str.49 = private unnamed_addr constant [7 x i8] c"g_3233\00", align 1
@g_3576 = internal global [3 x [6 x i32]] [[6 x i32] [i32 0, i32 103588135, i32 0, i32 103588135, i32 0, i32 103588135], [6 x i32] [i32 0, i32 103588135, i32 0, i32 103588135, i32 0, i32 103588135], [6 x i32] [i32 0, i32 103588135, i32 0, i32 103588135, i32 0, i32 103588135]], align 16
@.str.50 = private unnamed_addr constant [13 x i8] c"g_3576[i][j]\00", align 1
@g_3594 = internal global i16 0, align 2
@.str.51 = private unnamed_addr constant [7 x i8] c"g_3594\00", align 1
@g_3595 = internal global i32 -1, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_3595\00", align 1
@g_3733 = internal global i32 -1391142981, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"g_3733\00", align 1
@g_3916 = internal global i64 0, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"g_3916\00", align 1
@g_3967 = internal global [5 x [7 x [3 x i32]]] [[7 x [3 x i32]] [[3 x i32] [i32 -852066391, i32 -852066391, i32 -3], [3 x i32] [i32 -3, i32 2127264689, i32 0], [3 x i32] [i32 -3, i32 -1159202747, i32 1117616486], [3 x i32] [i32 -852066391, i32 -1091674239, i32 2127264689], [3 x i32] [i32 1117616486, i32 -3, i32 1117616486], [3 x i32] [i32 -721438017, i32 -530822332, i32 0], [3 x i32] [i32 1, i32 -530822332, i32 -3]], [7 x [3 x i32]] [[3 x i32] [i32 -1091674239, i32 -3, i32 -8], [3 x i32] [i32 91527389, i32 -1091674239, i32 -1091674239], [3 x i32] [i32 -1091674239, i32 -1159202747, i32 -852066391], [3 x i32] [i32 1, i32 2127264689, i32 -852066391], [3 x i32] [i32 -721438017, i32 -852066391, i32 -1091674239], [3 x i32] [i32 1117616486, i32 -3, i32 -8], [3 x i32] [i32 -852066391, i32 -852066391, i32 -3]], [7 x [3 x i32]] [[3 x i32] [i32 -721438017, i32 -1091674239, i32 -8], [3 x i32] [i32 -721438017, i32 0, i32 2127264689], [3 x i32] [i32 -3, i32 91527389, i32 -1091674239], [3 x i32] [i32 2127264689, i32 -721438017, i32 2127264689], [3 x i32] [i32 -530822332, i32 -1159202747, i32 -8], [3 x i32] [i32 1117616486, i32 -1159202747, i32 -3], [3 x i32] [i32 91527389, i32 -721438017, i32 1]], [7 x [3 x i32]] [[3 x i32] [i32 -852066391, i32 91527389, i32 91527389], [3 x i32] [i32 91527389, i32 0, i32 -3], [3 x i32] [i32 1117616486, i32 -1091674239, i32 -3], [3 x i32] [i32 -530822332, i32 -3, i32 91527389], [3 x i32] [i32 2127264689, i32 -3, i32 1], [3 x i32] [i32 -3, i32 -3, i32 -3], [3 x i32] [i32 -721438017, i32 -1091674239, i32 -8]], [7 x [3 x i32]] [[3 x i32] [i32 -721438017, i32 0, i32 2127264689], [3 x i32] [i32 -3, i32 91527389, i32 -1091674239], [3 x i32] [i32 2127264689, i32 -721438017, i32 2127264689], [3 x i32] [i32 -530822332, i32 -1159202747, i32 -8], [3 x i32] [i32 1117616486, i32 -1159202747, i32 -3], [3 x i32] [i32 91527389, i32 -721438017, i32 1], [3 x i32] [i32 -852066391, i32 91527389, i32 91527389]]], align 16
@.str.55 = private unnamed_addr constant [16 x i8] c"g_3967[i][j][k]\00", align 1
@g_4043 = internal global i32 1, align 4
@.str.56 = private unnamed_addr constant [7 x i8] c"g_4043\00", align 1
@g_4099 = internal global i8 0, align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"g_4099\00", align 1
@g_4100 = internal global i32 2012704113, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"g_4100\00", align 1
@g_4126 = internal constant [1 x i8] c"\09", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"g_4126[i]\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"g_4359[i].f0\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"g_4359[i].f1\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_9 = private unnamed_addr constant { i8, i8, i8, i8 } { i8 -48, i8 3, i8 0, i8 undef }, align 4
@g_420 = internal global [1 x i32**] [i32** @g_421], align 8
@func_1.l_4315 = private unnamed_addr constant [5 x i32] [i32 1770309270, i32 1770309270, i32 1770309270, i32 1770309270, i32 1770309270], align 16
@func_1.l_4324 = private unnamed_addr constant [6 x i16] [i16 9, i16 9, i16 9, i16 9, i16 9, i16 9], align 2
@g_421 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_35 to i8*), i64 12) to i32*), align 8
@.str.62 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_60 = internal global <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 -41, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 1, i8 0, i8 undef } }>, align 16
@g_106 = internal global <{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> }> <{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 64, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 39, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 64, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 64, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 39, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 39, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 64, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 64, i8 3, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 64, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 64, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 39, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 39, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 3, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 64, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 39, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 64, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 64, i8 3, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 39, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 39, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 87, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -72, i8 3, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 120, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 39, i8 0, i8 0, i8 undef } }> }>, align 16
@g_4359 = internal global <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 -80, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 0, i8 undef } }>, align 16
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
  %90 = call i32 @func_1()
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %110, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 6
  br i1 %96, label %97, label %113

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* @g_35, i32 0, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %103)
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

; <label>:106                                     ; preds = %97
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %107)
  br label %109

; <label>:109                                     ; preds = %106, %97
  br label %110

; <label>:110                                     ; preds = %109
  %111 = load i32, i32* %i, align 4, !tbaa !1
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:113                                     ; preds = %94
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %114

; <label>:114                                     ; preds = %142, %113
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = icmp slt i32 %115, 6
  br i1 %116, label %117, label %145

; <label>:117                                     ; preds = %114
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [6 x %struct.S0], [6 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>* @g_60 to [6 x %struct.S0]*), i32 0, i64 %119
  %121 = bitcast %struct.S0* %120 to i32*
  %122 = load volatile i32, i32* %121, align 4
  %123 = shl i32 %122, 29
  %124 = ashr i32 %123, 29
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %126)
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [6 x %struct.S0], [6 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>* @g_60 to [6 x %struct.S0]*), i32 0, i64 %128
  %130 = bitcast %struct.S0* %129 to i32*
  %131 = load volatile i32, i32* %130, align 4
  %132 = lshr i32 %131, 3
  %133 = and i32 %132, 16383
  %134 = zext i32 %133 to i64
  %135 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %135)
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

; <label>:138                                     ; preds = %117
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %139)
  br label %141

; <label>:141                                     ; preds = %138, %117
  br label %142

; <label>:142                                     ; preds = %141
  %143 = load i32, i32* %i, align 4, !tbaa !1
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %i, align 4, !tbaa !1
  br label %114

; <label>:145                                     ; preds = %114
  %146 = load i16, i16* @g_62, align 2, !tbaa !10
  %147 = zext i16 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %148)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %149

; <label>:149                                     ; preds = %177, %145
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = icmp slt i32 %150, 5
  br i1 %151, label %152, label %180

; <label>:152                                     ; preds = %149
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %153

; <label>:153                                     ; preds = %173, %152
  %154 = load i32, i32* %j, align 4, !tbaa !1
  %155 = icmp slt i32 %154, 2
  br i1 %155, label %156, label %176

; <label>:156                                     ; preds = %153
  %157 = load i32, i32* %j, align 4, !tbaa !1
  %158 = sext i32 %157 to i64
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [5 x [2 x i8]], [5 x [2 x i8]]* @g_64, i32 0, i64 %160
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %161, i32 0, i64 %158
  %163 = load i8, i8* %162, align 1, !tbaa !9
  %164 = zext i8 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 %165)
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

; <label>:168                                     ; preds = %156
  %169 = load i32, i32* %i, align 4, !tbaa !1
  %170 = load i32, i32* %j, align 4, !tbaa !1
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %169, i32 %170)
  br label %172

; <label>:172                                     ; preds = %168, %156
  br label %173

; <label>:173                                     ; preds = %172
  %174 = load i32, i32* %j, align 4, !tbaa !1
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %j, align 4, !tbaa !1
  br label %153

; <label>:176                                     ; preds = %153
  br label %177

; <label>:177                                     ; preds = %176
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %i, align 4, !tbaa !1
  br label %149

; <label>:180                                     ; preds = %149
  %181 = load i64, i64* @g_86, align 8, !tbaa !7
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %182)
  %183 = load i16, i16* @g_87, align 2, !tbaa !10
  %184 = sext i16 %183 to i64
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %185)
  %186 = load i32, i32* @g_100, align 4, !tbaa !1
  %187 = zext i32 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %188)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %189

; <label>:189                                     ; preds = %232, %180
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = icmp slt i32 %190, 9
  br i1 %191, label %192, label %235

; <label>:192                                     ; preds = %189
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %193

; <label>:193                                     ; preds = %228, %192
  %194 = load i32, i32* %j, align 4, !tbaa !1
  %195 = icmp slt i32 %194, 8
  br i1 %195, label %196, label %231

; <label>:196                                     ; preds = %193
  %197 = load i32, i32* %j, align 4, !tbaa !1
  %198 = sext i32 %197 to i64
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [9 x [8 x %struct.S0]], [9 x [8 x %struct.S0]]* bitcast (<{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> }>* @g_106 to [9 x [8 x %struct.S0]]*), i32 0, i64 %200
  %202 = getelementptr inbounds [8 x %struct.S0], [8 x %struct.S0]* %201, i32 0, i64 %198
  %203 = bitcast %struct.S0* %202 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 29
  %206 = ashr i32 %205, 29
  %207 = sext i32 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 %208)
  %209 = load i32, i32* %j, align 4, !tbaa !1
  %210 = sext i32 %209 to i64
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [9 x [8 x %struct.S0]], [9 x [8 x %struct.S0]]* bitcast (<{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> }>* @g_106 to [9 x [8 x %struct.S0]]*), i32 0, i64 %212
  %214 = getelementptr inbounds [8 x %struct.S0], [8 x %struct.S0]* %213, i32 0, i64 %210
  %215 = bitcast %struct.S0* %214 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = lshr i32 %216, 3
  %218 = and i32 %217, 16383
  %219 = zext i32 %218 to i64
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %219, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %220)
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

; <label>:223                                     ; preds = %196
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %225 = load i32, i32* %j, align 4, !tbaa !1
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %224, i32 %225)
  br label %227

; <label>:227                                     ; preds = %223, %196
  br label %228

; <label>:228                                     ; preds = %227
  %229 = load i32, i32* %j, align 4, !tbaa !1
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %j, align 4, !tbaa !1
  br label %193

; <label>:231                                     ; preds = %193
  br label %232

; <label>:232                                     ; preds = %231
  %233 = load i32, i32* %i, align 4, !tbaa !1
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %i, align 4, !tbaa !1
  br label %189

; <label>:235                                     ; preds = %189
  %236 = load i8, i8* @g_131, align 1, !tbaa !9
  %237 = sext i8 %236 to i64
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %238)
  %239 = load i16, i16* @g_142, align 2, !tbaa !10
  %240 = sext i16 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %241)
  %242 = load i32, i32* @g_151, align 4, !tbaa !1
  %243 = zext i32 %242 to i64
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %244)
  %245 = load volatile i16, i16* @g_164, align 2, !tbaa !10
  %246 = zext i16 %245 to i64
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %247)
  %248 = load i8, i8* @g_165, align 1, !tbaa !9
  %249 = zext i8 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %250)
  %251 = load volatile i64, i64* @g_235, align 8, !tbaa !7
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %252)
  %253 = load i32, i32* @g_272, align 4, !tbaa !1
  %254 = sext i32 %253 to i64
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %255)
  %256 = load i16, i16* @g_308, align 2, !tbaa !10
  %257 = zext i16 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %258)
  %259 = load volatile i32, i32* @g_353, align 4, !tbaa !1
  %260 = zext i32 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %261)
  %262 = load i8, i8* @g_391, align 1, !tbaa !9
  %263 = sext i8 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %264)
  %265 = load i32, i32* @g_519, align 4, !tbaa !1
  %266 = sext i32 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %267)
  %268 = load i16, i16* @g_634, align 2, !tbaa !10
  %269 = sext i16 %268 to i64
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %270)
  %271 = load i32, i32* @g_660, align 4, !tbaa !1
  %272 = sext i32 %271 to i64
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %273)
  %274 = load i64, i64* @g_730, align 8, !tbaa !7
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %275)
  %276 = load volatile i32, i32* @g_784, align 4, !tbaa !1
  %277 = zext i32 %276 to i64
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %277, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %278)
  %279 = load i32, i32* @g_811, align 4, !tbaa !1
  %280 = zext i32 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %281)
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %282)
  %283 = load volatile i8, i8* @g_1074, align 1, !tbaa !9
  %284 = zext i8 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %285)
  %286 = load volatile i16, i16* @g_1084, align 2, !tbaa !10
  %287 = sext i16 %286 to i64
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %288)
  %289 = load volatile i32, i32* @g_1319, align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %291)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %292

; <label>:292                                     ; preds = %331, %235
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = icmp slt i32 %293, 7
  br i1 %294, label %295, label %334

; <label>:295                                     ; preds = %292
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %296

; <label>:296                                     ; preds = %327, %295
  %297 = load i32, i32* %j, align 4, !tbaa !1
  %298 = icmp slt i32 %297, 10
  br i1 %298, label %299, label %330

; <label>:299                                     ; preds = %296
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %300

; <label>:300                                     ; preds = %323, %299
  %301 = load i32, i32* %k, align 4, !tbaa !1
  %302 = icmp slt i32 %301, 3
  br i1 %302, label %303, label %326

; <label>:303                                     ; preds = %300
  %304 = load i32, i32* %k, align 4, !tbaa !1
  %305 = sext i32 %304 to i64
  %306 = load i32, i32* %j, align 4, !tbaa !1
  %307 = sext i32 %306 to i64
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [7 x [10 x [3 x i64]]], [7 x [10 x [3 x i64]]]* @g_1360, i32 0, i64 %309
  %311 = getelementptr inbounds [10 x [3 x i64]], [10 x [3 x i64]]* %310, i32 0, i64 %307
  %312 = getelementptr inbounds [3 x i64], [3 x i64]* %311, i32 0, i64 %305
  %313 = load i64, i64* %312, align 8, !tbaa !7
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 %314)
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %322

; <label>:317                                     ; preds = %303
  %318 = load i32, i32* %i, align 4, !tbaa !1
  %319 = load i32, i32* %j, align 4, !tbaa !1
  %320 = load i32, i32* %k, align 4, !tbaa !1
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i32 %318, i32 %319, i32 %320)
  br label %322

; <label>:322                                     ; preds = %317, %303
  br label %323

; <label>:323                                     ; preds = %322
  %324 = load i32, i32* %k, align 4, !tbaa !1
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %k, align 4, !tbaa !1
  br label %300

; <label>:326                                     ; preds = %300
  br label %327

; <label>:327                                     ; preds = %326
  %328 = load i32, i32* %j, align 4, !tbaa !1
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %j, align 4, !tbaa !1
  br label %296

; <label>:330                                     ; preds = %296
  br label %331

; <label>:331                                     ; preds = %330
  %332 = load i32, i32* %i, align 4, !tbaa !1
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %i, align 4, !tbaa !1
  br label %292

; <label>:334                                     ; preds = %292
  %335 = load volatile i32, i32* @g_1523, align 4, !tbaa !1
  %336 = zext i32 %335 to i64
  %337 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %336, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %337)
  %338 = load i64, i64* @g_2046, align 8, !tbaa !7
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %339)
  %340 = load i8, i8* @g_2065, align 1, !tbaa !9
  %341 = sext i8 %340 to i64
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %342)
  %343 = load i8, i8* @g_2092, align 1, !tbaa !9
  %344 = sext i8 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %345)
  %346 = load volatile i64, i64* @g_2242, align 8, !tbaa !7
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %347)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %348

; <label>:348                                     ; preds = %364, %334
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = icmp slt i32 %349, 3
  br i1 %350, label %351, label %367

; <label>:351                                     ; preds = %348
  %352 = load i32, i32* %i, align 4, !tbaa !1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [3 x i16], [3 x i16]* @g_2303, i32 0, i64 %353
  %355 = load i16, i16* %354, align 2, !tbaa !10
  %356 = sext i16 %355 to i64
  %357 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %356, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 %357)
  %358 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

; <label>:360                                     ; preds = %351
  %361 = load i32, i32* %i, align 4, !tbaa !1
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %361)
  br label %363

; <label>:363                                     ; preds = %360, %351
  br label %364

; <label>:364                                     ; preds = %363
  %365 = load i32, i32* %i, align 4, !tbaa !1
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %i, align 4, !tbaa !1
  br label %348

; <label>:367                                     ; preds = %348
  %368 = load i64, i64* @g_2502, align 8, !tbaa !7
  %369 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %368, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %369)
  %370 = load i32, i32* @g_2528, align 4, !tbaa !1
  %371 = zext i32 %370 to i64
  %372 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %371, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %372)
  %373 = load volatile i32, i32* @g_2574, align 4, !tbaa !1
  %374 = zext i32 %373 to i64
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %375)
  %376 = load i16, i16* @g_2712, align 2, !tbaa !10
  %377 = zext i16 %376 to i64
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %378)
  %379 = load volatile i16, i16* @g_2792, align 2, !tbaa !10
  %380 = sext i16 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %381)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %382

; <label>:382                                     ; preds = %397, %367
  %383 = load i32, i32* %i, align 4, !tbaa !1
  %384 = icmp slt i32 %383, 2
  br i1 %384, label %385, label %400

; <label>:385                                     ; preds = %382
  %386 = load i32, i32* %i, align 4, !tbaa !1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [2 x i64], [2 x i64]* @g_2944, i32 0, i64 %387
  %389 = load i64, i64* %388, align 8, !tbaa !7
  %390 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %389, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 %390)
  %391 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

; <label>:393                                     ; preds = %385
  %394 = load i32, i32* %i, align 4, !tbaa !1
  %395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %394)
  br label %396

; <label>:396                                     ; preds = %393, %385
  br label %397

; <label>:397                                     ; preds = %396
  %398 = load i32, i32* %i, align 4, !tbaa !1
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %i, align 4, !tbaa !1
  br label %382

; <label>:400                                     ; preds = %382
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %401

; <label>:401                                     ; preds = %429, %400
  %402 = load i32, i32* %i, align 4, !tbaa !1
  %403 = icmp slt i32 %402, 1
  br i1 %403, label %404, label %432

; <label>:404                                     ; preds = %401
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %405

; <label>:405                                     ; preds = %425, %404
  %406 = load i32, i32* %j, align 4, !tbaa !1
  %407 = icmp slt i32 %406, 6
  br i1 %407, label %408, label %428

; <label>:408                                     ; preds = %405
  %409 = load i32, i32* %j, align 4, !tbaa !1
  %410 = sext i32 %409 to i64
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [1 x [6 x i32]], [1 x [6 x i32]]* @g_2988, i32 0, i64 %412
  %414 = getelementptr inbounds [6 x i32], [6 x i32]* %413, i32 0, i64 %410
  %415 = load i32, i32* %414, align 4, !tbaa !1
  %416 = sext i32 %415 to i64
  %417 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %416, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i32 %417)
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %424

; <label>:420                                     ; preds = %408
  %421 = load i32, i32* %i, align 4, !tbaa !1
  %422 = load i32, i32* %j, align 4, !tbaa !1
  %423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %421, i32 %422)
  br label %424

; <label>:424                                     ; preds = %420, %408
  br label %425

; <label>:425                                     ; preds = %424
  %426 = load i32, i32* %j, align 4, !tbaa !1
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %j, align 4, !tbaa !1
  br label %405

; <label>:428                                     ; preds = %405
  br label %429

; <label>:429                                     ; preds = %428
  %430 = load i32, i32* %i, align 4, !tbaa !1
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %i, align 4, !tbaa !1
  br label %401

; <label>:432                                     ; preds = %401
  %433 = load i16, i16* @g_3233, align 2, !tbaa !10
  %434 = zext i16 %433 to i64
  %435 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %434, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %435)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %436

; <label>:436                                     ; preds = %464, %432
  %437 = load i32, i32* %i, align 4, !tbaa !1
  %438 = icmp slt i32 %437, 3
  br i1 %438, label %439, label %467

; <label>:439                                     ; preds = %436
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %440

; <label>:440                                     ; preds = %460, %439
  %441 = load i32, i32* %j, align 4, !tbaa !1
  %442 = icmp slt i32 %441, 6
  br i1 %442, label %443, label %463

; <label>:443                                     ; preds = %440
  %444 = load i32, i32* %j, align 4, !tbaa !1
  %445 = sext i32 %444 to i64
  %446 = load i32, i32* %i, align 4, !tbaa !1
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* @g_3576, i32 0, i64 %447
  %449 = getelementptr inbounds [6 x i32], [6 x i32]* %448, i32 0, i64 %445
  %450 = load volatile i32, i32* %449, align 4, !tbaa !1
  %451 = sext i32 %450 to i64
  %452 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %451, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i32 %452)
  %453 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %459

; <label>:455                                     ; preds = %443
  %456 = load i32, i32* %i, align 4, !tbaa !1
  %457 = load i32, i32* %j, align 4, !tbaa !1
  %458 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %456, i32 %457)
  br label %459

; <label>:459                                     ; preds = %455, %443
  br label %460

; <label>:460                                     ; preds = %459
  %461 = load i32, i32* %j, align 4, !tbaa !1
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %j, align 4, !tbaa !1
  br label %440

; <label>:463                                     ; preds = %440
  br label %464

; <label>:464                                     ; preds = %463
  %465 = load i32, i32* %i, align 4, !tbaa !1
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %i, align 4, !tbaa !1
  br label %436

; <label>:467                                     ; preds = %436
  %468 = load volatile i16, i16* @g_3594, align 2, !tbaa !10
  %469 = zext i16 %468 to i64
  %470 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %469, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %470)
  %471 = load volatile i32, i32* @g_3595, align 4, !tbaa !1
  %472 = zext i32 %471 to i64
  %473 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %472, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %473)
  %474 = load volatile i32, i32* @g_3733, align 4, !tbaa !1
  %475 = zext i32 %474 to i64
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %475, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %476)
  %477 = load i64, i64* @g_3916, align 8, !tbaa !7
  %478 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %477, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %478)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %479

; <label>:479                                     ; preds = %519, %467
  %480 = load i32, i32* %i, align 4, !tbaa !1
  %481 = icmp slt i32 %480, 5
  br i1 %481, label %482, label %522

; <label>:482                                     ; preds = %479
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %483

; <label>:483                                     ; preds = %515, %482
  %484 = load i32, i32* %j, align 4, !tbaa !1
  %485 = icmp slt i32 %484, 7
  br i1 %485, label %486, label %518

; <label>:486                                     ; preds = %483
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %487

; <label>:487                                     ; preds = %511, %486
  %488 = load i32, i32* %k, align 4, !tbaa !1
  %489 = icmp slt i32 %488, 3
  br i1 %489, label %490, label %514

; <label>:490                                     ; preds = %487
  %491 = load i32, i32* %k, align 4, !tbaa !1
  %492 = sext i32 %491 to i64
  %493 = load i32, i32* %j, align 4, !tbaa !1
  %494 = sext i32 %493 to i64
  %495 = load i32, i32* %i, align 4, !tbaa !1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [5 x [7 x [3 x i32]]], [5 x [7 x [3 x i32]]]* @g_3967, i32 0, i64 %496
  %498 = getelementptr inbounds [7 x [3 x i32]], [7 x [3 x i32]]* %497, i32 0, i64 %494
  %499 = getelementptr inbounds [3 x i32], [3 x i32]* %498, i32 0, i64 %492
  %500 = load i32, i32* %499, align 4, !tbaa !1
  %501 = sext i32 %500 to i64
  %502 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %501, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i32 %502)
  %503 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %510

; <label>:505                                     ; preds = %490
  %506 = load i32, i32* %i, align 4, !tbaa !1
  %507 = load i32, i32* %j, align 4, !tbaa !1
  %508 = load i32, i32* %k, align 4, !tbaa !1
  %509 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i32 %506, i32 %507, i32 %508)
  br label %510

; <label>:510                                     ; preds = %505, %490
  br label %511

; <label>:511                                     ; preds = %510
  %512 = load i32, i32* %k, align 4, !tbaa !1
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %k, align 4, !tbaa !1
  br label %487

; <label>:514                                     ; preds = %487
  br label %515

; <label>:515                                     ; preds = %514
  %516 = load i32, i32* %j, align 4, !tbaa !1
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %j, align 4, !tbaa !1
  br label %483

; <label>:518                                     ; preds = %483
  br label %519

; <label>:519                                     ; preds = %518
  %520 = load i32, i32* %i, align 4, !tbaa !1
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %i, align 4, !tbaa !1
  br label %479

; <label>:522                                     ; preds = %479
  %523 = load volatile i32, i32* @g_4043, align 4, !tbaa !1
  %524 = sext i32 %523 to i64
  %525 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %524, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %525)
  %526 = load i8, i8* @g_4099, align 1, !tbaa !9
  %527 = sext i8 %526 to i64
  %528 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %527, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %528)
  %529 = load i32, i32* @g_4100, align 4, !tbaa !1
  %530 = sext i32 %529 to i64
  %531 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %530, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %531)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %532

; <label>:532                                     ; preds = %548, %522
  %533 = load i32, i32* %i, align 4, !tbaa !1
  %534 = icmp slt i32 %533, 1
  br i1 %534, label %535, label %551

; <label>:535                                     ; preds = %532
  %536 = load i32, i32* %i, align 4, !tbaa !1
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [1 x i8], [1 x i8]* @g_4126, i32 0, i64 %537
  %539 = load i8, i8* %538, align 1, !tbaa !9
  %540 = zext i8 %539 to i64
  %541 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %540, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %541)
  %542 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %547

; <label>:544                                     ; preds = %535
  %545 = load i32, i32* %i, align 4, !tbaa !1
  %546 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %545)
  br label %547

; <label>:547                                     ; preds = %544, %535
  br label %548

; <label>:548                                     ; preds = %547
  %549 = load i32, i32* %i, align 4, !tbaa !1
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %i, align 4, !tbaa !1
  br label %532

; <label>:551                                     ; preds = %532
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %552

; <label>:552                                     ; preds = %580, %551
  %553 = load i32, i32* %i, align 4, !tbaa !1
  %554 = icmp slt i32 %553, 5
  br i1 %554, label %555, label %583

; <label>:555                                     ; preds = %552
  %556 = load i32, i32* %i, align 4, !tbaa !1
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [5 x %struct.S0], [5 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>* @g_4359 to [5 x %struct.S0]*), i32 0, i64 %557
  %559 = bitcast %struct.S0* %558 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = shl i32 %560, 29
  %562 = ashr i32 %561, 29
  %563 = sext i32 %562 to i64
  %564 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %563, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i32 %564)
  %565 = load i32, i32* %i, align 4, !tbaa !1
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [5 x %struct.S0], [5 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>* @g_4359 to [5 x %struct.S0]*), i32 0, i64 %566
  %568 = bitcast %struct.S0* %567 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = lshr i32 %569, 3
  %571 = and i32 %570, 16383
  %572 = zext i32 %571 to i64
  %573 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %572, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), i32 %573)
  %574 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %579

; <label>:576                                     ; preds = %555
  %577 = load i32, i32* %i, align 4, !tbaa !1
  %578 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %577)
  br label %579

; <label>:579                                     ; preds = %576, %555
  br label %580

; <label>:580                                     ; preds = %579
  %581 = load i32, i32* %i, align 4, !tbaa !1
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %i, align 4, !tbaa !1
  br label %552

; <label>:583                                     ; preds = %552
  %584 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %585 = zext i32 %584 to i64
  %586 = xor i64 %585, 4294967295
  %587 = trunc i64 %586 to i32
  %588 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %587, i32 %588)
  %589 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %589) #1
  %590 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %590) #1
  %591 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %591) #1
  %592 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %592) #1
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
  %l_2 = alloca i32*, align 8
  %l_9 = alloca %struct.S0, align 4
  %l_2344 = alloca i32*, align 8
  %l_2345 = alloca i32, align 4
  %l_3988 = alloca i16****, align 8
  %l_3987 = alloca i16*****, align 8
  %l_3994 = alloca i32***, align 8
  %l_3993 = alloca [5 x i32****], align 16
  %l_3998 = alloca i32, align 4
  %l_4019 = alloca i32, align 4
  %l_4045 = alloca i32, align 4
  %l_4049 = alloca i32, align 4
  %l_4050 = alloca i32, align 4
  %l_4122 = alloca i8*, align 8
  %l_4169 = alloca i32***, align 8
  %l_4173 = alloca i8, align 1
  %l_4221 = alloca i64**, align 8
  %l_4220 = alloca i64***, align 8
  %l_4219 = alloca i64****, align 8
  %l_4248 = alloca i32*, align 8
  %l_4249 = alloca i32, align 4
  %l_4282 = alloca i16, align 2
  %l_4315 = alloca [5 x i32], align 16
  %l_4316 = alloca i32, align 4
  %l_4324 = alloca [6 x i16], align 2
  %l_4358 = alloca i32, align 4
  %i = alloca i32, align 4
  %1 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* @g_3, i32** %l_2, align 8, !tbaa !5
  %2 = bitcast %struct.S0* %l_9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.S0* %l_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @func_1.l_9, i32 0, i32 0), i64 4, i32 4, i1 false)
  %4 = bitcast i32** %l_2344 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_3, i32** %l_2344, align 8, !tbaa !5
  %5 = bitcast i32* %l_2345 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1, i32* %l_2345, align 4, !tbaa !1
  %6 = bitcast i16***** %l_3988 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16**** null, i16***** %l_3988, align 8, !tbaa !5
  %7 = bitcast i16****** %l_3987 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16***** %l_3988, i16****** %l_3987, align 8, !tbaa !5
  %8 = bitcast i32**** %l_3994 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32*** null, i32**** %l_3994, align 8, !tbaa !5
  %9 = bitcast [5 x i32****]* %l_3993 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %9) #1
  %10 = getelementptr inbounds [5 x i32****], [5 x i32****]* %l_3993, i64 0, i64 0
  store i32**** %l_3994, i32***** %10, !tbaa !5
  %11 = getelementptr inbounds i32****, i32***** %10, i64 1
  store i32**** %l_3994, i32***** %11, !tbaa !5
  %12 = getelementptr inbounds i32****, i32***** %11, i64 1
  store i32**** %l_3994, i32***** %12, !tbaa !5
  %13 = getelementptr inbounds i32****, i32***** %12, i64 1
  store i32**** %l_3994, i32***** %13, !tbaa !5
  %14 = getelementptr inbounds i32****, i32***** %13, i64 1
  store i32**** %l_3994, i32***** %14, !tbaa !5
  %15 = bitcast i32* %l_3998 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %l_3998, align 4, !tbaa !1
  %16 = bitcast i32* %l_4019 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %l_4019, align 4, !tbaa !1
  %17 = bitcast i32* %l_4045 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 -1877956119, i32* %l_4045, align 4, !tbaa !1
  %18 = bitcast i32* %l_4049 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 501305054, i32* %l_4049, align 4, !tbaa !1
  %19 = bitcast i32* %l_4050 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 1, i32* %l_4050, align 4, !tbaa !1
  %20 = bitcast i8** %l_4122 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i8* null, i8** %l_4122, align 8, !tbaa !5
  %21 = bitcast i32**** %l_4169 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32*** getelementptr inbounds ([1 x i32**], [1 x i32**]* @g_420, i32 0, i64 0), i32**** %l_4169, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_4173) #1
  store i8 -7, i8* %l_4173, align 1, !tbaa !9
  %22 = bitcast i64*** %l_4221 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i64** null, i64*** %l_4221, align 8, !tbaa !5
  %23 = bitcast i64**** %l_4220 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i64*** %l_4221, i64**** %l_4220, align 8, !tbaa !5
  %24 = bitcast i64***** %l_4219 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i64**** %l_4220, i64***** %l_4219, align 8, !tbaa !5
  %25 = bitcast i32** %l_4248 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i32* %l_4019, i32** %l_4248, align 8, !tbaa !5
  %26 = bitcast i32* %l_4249 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 -6, i32* %l_4249, align 4, !tbaa !1
  %27 = bitcast i16* %l_4282 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %27) #1
  store i16 0, i16* %l_4282, align 2, !tbaa !10
  %28 = bitcast [5 x i32]* %l_4315 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %28) #1
  %29 = bitcast [5 x i32]* %l_4315 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast ([5 x i32]* @func_1.l_4315 to i8*), i64 20, i32 16, i1 false)
  %30 = bitcast i32* %l_4316 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 -1063621431, i32* %l_4316, align 4, !tbaa !1
  %31 = bitcast [6 x i16]* %l_4324 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %31) #1
  %32 = bitcast [6 x i16]* %l_4324 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* bitcast ([6 x i16]* @func_1.l_4324 to i8*), i64 12, i32 2, i1 false)
  %33 = bitcast i32* %l_4358 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 37298964, i32* %l_4358, align 4, !tbaa !1
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32*, i32** %l_2, align 8, !tbaa !5
  %36 = load i32, i32* %35, align 4, !tbaa !1
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4, !tbaa !1
  %40 = load i32*, i32** %l_2, align 8, !tbaa !5
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %l_4358 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast [6 x i16]* %l_4324 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %44) #1
  %45 = bitcast i32* %l_4316 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast [5 x i32]* %l_4315 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %46) #1
  %47 = bitcast i16* %l_4282 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %47) #1
  %48 = bitcast i32* %l_4249 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32** %l_4248 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i64***** %l_4219 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i64**** %l_4220 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i64*** %l_4221 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_4173) #1
  %53 = bitcast i32**** %l_4169 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i8** %l_4122 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32* %l_4050 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %l_4049 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %l_4045 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %l_4019 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %l_3998 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast [5 x i32****]* %l_3993 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %60) #1
  %61 = bitcast i32**** %l_3994 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i16****** %l_3987 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i16***** %l_3988 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %l_2345 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32** %l_2344 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.S0* %l_9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  ret i32 %41
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
