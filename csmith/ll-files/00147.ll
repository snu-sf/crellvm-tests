; ModuleID = '00147.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type <{ i32, i8, i8 }>

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 1788802861, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global i32 1744960574, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_16 = internal global i32 615858452, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_17 = internal global i32 1342013763, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_17\00", align 1
@g_56 = internal global i32 1688049042, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_56\00", align 1
@g_60 = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_60\00", align 1
@g_69 = internal global [9 x [6 x [4 x i32]]] [[6 x [4 x i32]] [[4 x i32] [i32 853285677, i32 -830118357, i32 -830118357, i32 853285677], [4 x i32] [i32 -830118357, i32 853285677, i32 7, i32 429015555], [4 x i32] [i32 -830118357, i32 7, i32 -830118357, i32 -1], [4 x i32] [i32 853285677, i32 429015555, i32 -1, i32 -1], [4 x i32] [i32 7, i32 7, i32 -1851299260, i32 429015555], [4 x i32] [i32 429015555, i32 853285677, i32 -1851299260, i32 853285677]], [6 x [4 x i32]] [[4 x i32] [i32 7, i32 -830118357, i32 -1, i32 -1851299260], [4 x i32] [i32 853285677, i32 -830118357, i32 -830118357, i32 853285677], [4 x i32] [i32 -830118357, i32 853285677, i32 7, i32 429015555], [4 x i32] [i32 -830118357, i32 7, i32 -830118357, i32 -1], [4 x i32] [i32 853285677, i32 429015555, i32 -1, i32 -1], [4 x i32] [i32 7, i32 7, i32 7, i32 -1]], [6 x [4 x i32]] [[4 x i32] [i32 -1, i32 -830118357, i32 7, i32 -830118357], [4 x i32] [i32 1675829295, i32 429015555, i32 -1851299260, i32 7], [4 x i32] [i32 -830118357, i32 429015555, i32 429015555, i32 -830118357], [4 x i32] [i32 429015555, i32 -830118357, i32 1675829295, i32 -1], [4 x i32] [i32 429015555, i32 1675829295, i32 429015555, i32 -1851299260], [4 x i32] [i32 -830118357, i32 -1, i32 -1851299260, i32 -1851299260]], [6 x [4 x i32]] [[4 x i32] [i32 1675829295, i32 1675829295, i32 7, i32 -1], [4 x i32] [i32 -1, i32 -830118357, i32 7, i32 -830118357], [4 x i32] [i32 1675829295, i32 429015555, i32 -1851299260, i32 7], [4 x i32] [i32 -830118357, i32 429015555, i32 429015555, i32 -830118357], [4 x i32] [i32 429015555, i32 -830118357, i32 1675829295, i32 -1], [4 x i32] [i32 429015555, i32 1675829295, i32 429015555, i32 -1851299260]], [6 x [4 x i32]] [[4 x i32] [i32 -830118357, i32 -1, i32 -1851299260, i32 -1851299260], [4 x i32] [i32 1675829295, i32 1675829295, i32 7, i32 -1], [4 x i32] [i32 -1, i32 -830118357, i32 7, i32 -830118357], [4 x i32] [i32 1675829295, i32 429015555, i32 -1851299260, i32 7], [4 x i32] [i32 -830118357, i32 429015555, i32 429015555, i32 -830118357], [4 x i32] [i32 429015555, i32 -830118357, i32 1675829295, i32 -1]], [6 x [4 x i32]] [[4 x i32] [i32 429015555, i32 1675829295, i32 429015555, i32 -1851299260], [4 x i32] [i32 -830118357, i32 -1, i32 -1851299260, i32 -1851299260], [4 x i32] [i32 1675829295, i32 1675829295, i32 7, i32 -1], [4 x i32] [i32 -1, i32 -830118357, i32 7, i32 -830118357], [4 x i32] [i32 1675829295, i32 429015555, i32 -1851299260, i32 7], [4 x i32] [i32 -830118357, i32 429015555, i32 429015555, i32 -830118357]], [6 x [4 x i32]] [[4 x i32] [i32 429015555, i32 -830118357, i32 1675829295, i32 -1], [4 x i32] [i32 429015555, i32 1675829295, i32 429015555, i32 -1851299260], [4 x i32] [i32 -830118357, i32 -1, i32 -1851299260, i32 -1851299260], [4 x i32] [i32 1675829295, i32 1675829295, i32 7, i32 -1], [4 x i32] [i32 -1, i32 -830118357, i32 7, i32 -830118357], [4 x i32] [i32 1675829295, i32 429015555, i32 -1851299260, i32 7]], [6 x [4 x i32]] [[4 x i32] [i32 -830118357, i32 429015555, i32 429015555, i32 -830118357], [4 x i32] [i32 429015555, i32 -830118357, i32 1675829295, i32 -1], [4 x i32] [i32 429015555, i32 1675829295, i32 429015555, i32 -1851299260], [4 x i32] [i32 -830118357, i32 -1, i32 -1851299260, i32 -1851299260], [4 x i32] [i32 1675829295, i32 1675829295, i32 7, i32 -1], [4 x i32] [i32 -1, i32 -830118357, i32 7, i32 -830118357]], [6 x [4 x i32]] [[4 x i32] [i32 1675829295, i32 429015555, i32 -1851299260, i32 7], [4 x i32] [i32 -830118357, i32 429015555, i32 429015555, i32 -830118357], [4 x i32] [i32 429015555, i32 -830118357, i32 1675829295, i32 -1], [4 x i32] [i32 429015555, i32 1675829295, i32 429015555, i32 -1851299260], [4 x i32] [i32 -830118357, i32 -1, i32 -1851299260, i32 -1851299260], [4 x i32] [i32 1675829295, i32 1675829295, i32 7, i32 -1]]], align 16
@.str.7 = private unnamed_addr constant [14 x i8] c"g_69[i][j][k]\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_72 = internal global i32 -2020495001, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_72\00", align 1
@g_76 = internal global i32 8, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_76\00", align 1
@g_96 = internal global i64 -965394889226271501, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"g_96\00", align 1
@g_97 = internal global i16 -12562, align 2
@.str.12 = private unnamed_addr constant [5 x i8] c"g_97\00", align 1
@g_121 = internal global [9 x i32] [i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"g_121[i]\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_135 = internal global [5 x [1 x [10 x i16]]] [[1 x [10 x i16]] [[10 x i16] [i16 18025, i16 -27566, i16 -258, i16 -9, i16 1, i16 14346, i16 -24436, i16 9, i16 28274, i16 28274]], [1 x [10 x i16]] [[10 x i16] [i16 1, i16 -9, i16 1, i16 -24409, i16 -24409, i16 1, i16 13226, i16 -9, i16 0, i16 9]], [1 x [10 x i16]] [[10 x i16] [i16 9, i16 -24436, i16 14346, i16 1, i16 -9, i16 -258, i16 -27566, i16 18025, i16 -6, i16 -24409]], [1 x [10 x i16]] [[10 x i16] [i16 29549, i16 -258, i16 14346, i16 -9, i16 8, i16 18025, i16 8, i16 -9, i16 14346, i16 -258]], [1 x [10 x i16]] [[10 x i16] [i16 -1107, i16 1, i16 1, i16 9, i16 1, i16 -24409, i16 -24436, i16 -258, i16 1, i16 29549]]], align 16
@.str.15 = private unnamed_addr constant [15 x i8] c"g_135[i][j][k]\00", align 1
@g_136 = internal global i64 3420250317473317472, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_136\00", align 1
@g_139 = internal global i16 -16510, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_139\00", align 1
@g_209 = internal global i8 62, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_209\00", align 1
@g_213 = internal global %struct.S0 <{ i32 -3, i8 -90, i8 -64 }>, align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_213.f0\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"g_213.f1\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_213.f2\00", align 1
@g_227 = internal global i16 -9, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_227\00", align 1
@g_275 = internal global i16 0, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_275\00", align 1
@g_279 = internal global i32 1229425413, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_279\00", align 1
@g_319 = internal global i64 1, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_319\00", align 1
@g_561 = internal global i32 -2131531882, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_561\00", align 1
@g_715 = internal global i32 213099065, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_715\00", align 1
@g_814 = internal global i64 0, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"g_814\00", align 1
@g_880 = internal global [4 x [8 x [3 x i8]]] [[8 x [3 x i8]] [[3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8"], [8 x [3 x i8]] [[3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8"], [8 x [3 x i8]] [[3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8"], [8 x [3 x i8]] [[3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8", [3 x i8] c"\F8\F8\F8"]], align 16
@.str.29 = private unnamed_addr constant [15 x i8] c"g_880[i][j][k]\00", align 1
@g_1016 = internal global i32 -4, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1016\00", align 1
@g_1075 = internal global i8 -97, align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1075\00", align 1
@g_1078 = internal global [7 x i8] c"\01\01\01\01\01\01\01", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"g_1078[i]\00", align 1
@g_1080 = internal global i8 98, align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1080\00", align 1
@g_1082 = internal global i8 109, align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1082\00", align 1
@g_1084 = internal global [3 x i8] c"\06\06\06", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"g_1084[i]\00", align 1
@g_1086 = internal global i8 39, align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1086\00", align 1
@g_1155 = internal global i8 -7, align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1155\00", align 1
@g_1157 = internal global i8 -107, align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1157\00", align 1
@g_1184 = internal global %struct.S0 <{ i32 1, i8 21, i8 0 }>, align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"g_1184.f0\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"g_1184.f1\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"g_1184.f2\00", align 1
@g_1461 = internal global i8 1, align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1461\00", align 1
@g_1470 = internal global [7 x [2 x [5 x i16]]] [[2 x [5 x i16]] [[5 x i16] [i16 -13741, i16 4866, i16 4, i16 4866, i16 -13741], [5 x i16] [i16 11361, i16 26326, i16 -1, i16 1, i16 1]], [2 x [5 x i16]] [[5 x i16] [i16 -1, i16 4866, i16 -1, i16 0, i16 1], [5 x i16] [i16 3, i16 20859, i16 6730, i16 26326, i16 1]], [2 x [5 x i16]] [[5 x i16] [i16 -13741, i16 0, i16 0, i16 8, i16 -13741], [5 x i16] [i16 1, i16 6730, i16 6730, i16 1, i16 3]], [2 x [5 x i16]] [[5 x i16] [i16 1, i16 8, i16 -1, i16 0, i16 -1], [5 x i16] [i16 1, i16 20859, i16 -1, i16 6730, i16 11361]], [2 x [5 x i16]] [[5 x i16] [i16 -13741, i16 0, i16 4, i16 0, i16 -13741], [5 x i16] [i16 3, i16 26326, i16 0, i16 1, i16 20859]], [2 x [5 x i16]] [[5 x i16] [i16 -1, i16 0, i16 -1, i16 8, i16 1], [5 x i16] [i16 11361, i16 20859, i16 26326, i16 26326, i16 20859]], [2 x [5 x i16]] [[5 x i16] [i16 -13741, i16 8, i16 0, i16 0, i16 -13741], [5 x i16] [i16 20859, i16 6730, i16 26326, i16 1, i16 11361]]], align 16
@.str.43 = private unnamed_addr constant [16 x i8] c"g_1470[i][j][k]\00", align 1
@g_1472 = internal global i64 9, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1472\00", align 1
@g_1509 = internal global [3 x i16] [i16 7, i16 7, i16 7], align 2
@.str.45 = private unnamed_addr constant [10 x i8] c"g_1509[i]\00", align 1
@g_1623 = internal global [9 x [4 x i32]] [[4 x i32] [i32 1715261172, i32 -29136436, i32 -1615496558, i32 1], [4 x i32] [i32 -604195022, i32 1, i32 1715261172, i32 1], [4 x i32] [i32 -1, i32 7, i32 -1, i32 -1], [4 x i32] [i32 1867326675, i32 1, i32 -604195022, i32 -4], [4 x i32] [i32 -29136436, i32 1, i32 -4, i32 1867326675], [4 x i32] [i32 -29136436, i32 -4, i32 -604195022, i32 -604195022], [4 x i32] [i32 1867326675, i32 1867326675, i32 -1, i32 1211551970], [4 x i32] [i32 -1, i32 -1, i32 1715261172, i32 7], [4 x i32] [i32 -604195022, i32 580404441, i32 -1615496558, i32 1715261172]], align 16
@.str.46 = private unnamed_addr constant [13 x i8] c"g_1623[i][j]\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_1631 = internal global i8 65, align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1631\00", align 1
@g_1661 = internal global i16 1, align 2
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1661\00", align 1
@g_1841 = internal global i8 -36, align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1841\00", align 1
@g_1872 = internal global i64 1, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1872\00", align 1
@g_2050 = internal global i32 360285739, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_2050\00", align 1
@g_2130 = internal global i64 -1, align 8
@.str.53 = private unnamed_addr constant [7 x i8] c"g_2130\00", align 1
@g_2181 = internal global i32 -5, align 4
@.str.54 = private unnamed_addr constant [7 x i8] c"g_2181\00", align 1
@g_2268 = internal global i8 -106, align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"g_2268\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2348 = private unnamed_addr constant [2 x [5 x i32]] [[5 x i32] [i32 566964427, i32 566964427, i32 -1151716194, i32 -6, i32 -1151716194], [5 x i32] [i32 566964427, i32 566964427, i32 -1151716194, i32 -6, i32 -1151716194]], align 16
@g_1996 = internal global i64** null, align 8
@func_1.l_2322 = private unnamed_addr constant [4 x [4 x i64***]] [[4 x i64***] [i64*** @g_1996, i64*** @g_1996, i64*** null, i64*** null], [4 x i64***] [i64*** @g_1996, i64*** @g_1996, i64*** @g_1996, i64*** @g_1996], [4 x i64***] [i64*** @g_1996, i64*** @g_1996, i64*** @g_1996, i64*** @g_1996], [4 x i64***] [i64*** @g_1996, i64*** @g_1996, i64*** null, i64*** @g_1996]], align 16
@func_1.l_2323 = private unnamed_addr constant %struct.S0 <{ i32 0, i8 -38, i8 0 }>, align 1
@func_1.l_15 = private unnamed_addr constant [9 x i32] [i32 926869347, i32 -7, i32 926869347, i32 -7, i32 926869347, i32 -7, i32 926869347, i32 -7, i32 926869347], align 16
@func_1.l_2351 = private unnamed_addr constant [9 x [3 x i32]] [[3 x i32] [i32 1101358935, i32 1101358935, i32 1], [3 x i32] [i32 -1, i32 1, i32 1], [3 x i32] [i32 1, i32 1, i32 1879837913], [3 x i32] [i32 -1, i32 1, i32 -1], [3 x i32] [i32 1101358935, i32 1, i32 1879837913], [3 x i32] [i32 1101358935, i32 1101358935, i32 1], [3 x i32] [i32 -1, i32 1, i32 1], [3 x i32] [i32 1, i32 1, i32 1879837913], [3 x i32] [i32 -1, i32 1, i32 1879837913]], align 16
@func_1.l_1041 = private unnamed_addr constant [7 x i32] [i32 -1420001082, i32 451266528, i32 -1420001082, i32 -1420001082, i32 451266528, i32 -1420001082, i32 -1420001082], align 16
@func_1.l_2341 = private unnamed_addr constant [2 x [7 x i32]] [[7 x i32] [i32 3, i32 3, i32 -1, i32 3, i32 3, i32 -1, i32 3], [7 x i32] [i32 136973542, i32 121391253, i32 121391253, i32 136973542, i32 121391253, i32 121391253, i32 136973542]], align 16
@g_1224 = internal global i16*** @g_854, align 8
@g_1955 = internal global i32** getelementptr inbounds ([9 x i32*], [9 x i32*]* @g_1956, i32 0, i32 0), align 8
@g_854 = internal global i16** @g_855, align 8
@g_855 = internal global i16* @g_97, align 8
@g_1956 = internal global [9 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [6 x [4 x i32]]]* @g_69 to i8*), i64 380) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [6 x [4 x i32]]]* @g_69 to i8*), i64 380) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [6 x [4 x i32]]]* @g_69 to i8*), i64 380) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [6 x [4 x i32]]]* @g_69 to i8*), i64 380) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [6 x [4 x i32]]]* @g_69 to i8*), i64 380) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [6 x [4 x i32]]]* @g_69 to i8*), i64 380) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [6 x [4 x i32]]]* @g_69 to i8*), i64 380) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [6 x [4 x i32]]]* @g_69 to i8*), i64 380) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [6 x [4 x i32]]]* @g_69 to i8*), i64 380) to i32*)], align 16
@.str.56 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call signext i16 @func_1()
  %91 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_3, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load volatile i32, i32* @g_16, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i32, i32* @g_17, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i32, i32* @g_56, align 4, !tbaa !1
  %104 = zext i32 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i32, i32* @g_60, align 4, !tbaa !1
  %107 = zext i32 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %149, %89
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = icmp slt i32 %110, 9
  br i1 %111, label %112, label %152

; <label>:112                                     ; preds = %109
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %113

; <label>:113                                     ; preds = %145, %112
  %114 = load i32, i32* %j, align 4, !tbaa !1
  %115 = icmp slt i32 %114, 6
  br i1 %115, label %116, label %148

; <label>:116                                     ; preds = %113
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %117

; <label>:117                                     ; preds = %141, %116
  %118 = load i32, i32* %k, align 4, !tbaa !1
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %120, label %144

; <label>:120                                     ; preds = %117
  %121 = load i32, i32* %k, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* %j, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [9 x [6 x [4 x i32]]], [9 x [6 x [4 x i32]]]* @g_69, i32 0, i64 %126
  %128 = getelementptr inbounds [6 x [4 x i32]], [6 x [4 x i32]]* %127, i32 0, i64 %124
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %128, i32 0, i64 %122
  %130 = load i32, i32* %129, align 4, !tbaa !1
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 %132)
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

; <label>:135                                     ; preds = %120
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = load i32, i32* %j, align 4, !tbaa !1
  %138 = load i32, i32* %k, align 4, !tbaa !1
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %136, i32 %137, i32 %138)
  br label %140

; <label>:140                                     ; preds = %135, %120
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load i32, i32* %k, align 4, !tbaa !1
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %k, align 4, !tbaa !1
  br label %117

; <label>:144                                     ; preds = %117
  br label %145

; <label>:145                                     ; preds = %144
  %146 = load i32, i32* %j, align 4, !tbaa !1
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %j, align 4, !tbaa !1
  br label %113

; <label>:148                                     ; preds = %113
  br label %149

; <label>:149                                     ; preds = %148
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:152                                     ; preds = %109
  %153 = load i32, i32* @g_72, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %155)
  %156 = load i32, i32* @g_76, align 4, !tbaa !1
  %157 = sext i32 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %158)
  %159 = load i64, i64* @g_96, align 8, !tbaa !7
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %160)
  %161 = load i16, i16* @g_97, align 2, !tbaa !10
  %162 = zext i16 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %163)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %164

; <label>:164                                     ; preds = %180, %152
  %165 = load i32, i32* %i, align 4, !tbaa !1
  %166 = icmp slt i32 %165, 9
  br i1 %166, label %167, label %183

; <label>:167                                     ; preds = %164
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [9 x i32], [9 x i32]* @g_121, i32 0, i64 %169
  %171 = load i32, i32* %170, align 4, !tbaa !1
  %172 = zext i32 %171 to i64
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %173)
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

; <label>:176                                     ; preds = %167
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 %177)
  br label %179

; <label>:179                                     ; preds = %176, %167
  br label %180

; <label>:180                                     ; preds = %179
  %181 = load i32, i32* %i, align 4, !tbaa !1
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %i, align 4, !tbaa !1
  br label %164

; <label>:183                                     ; preds = %164
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %184

; <label>:184                                     ; preds = %224, %183
  %185 = load i32, i32* %i, align 4, !tbaa !1
  %186 = icmp slt i32 %185, 5
  br i1 %186, label %187, label %227

; <label>:187                                     ; preds = %184
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %188

; <label>:188                                     ; preds = %220, %187
  %189 = load i32, i32* %j, align 4, !tbaa !1
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %191, label %223

; <label>:191                                     ; preds = %188
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %192

; <label>:192                                     ; preds = %216, %191
  %193 = load i32, i32* %k, align 4, !tbaa !1
  %194 = icmp slt i32 %193, 10
  br i1 %194, label %195, label %219

; <label>:195                                     ; preds = %192
  %196 = load i32, i32* %k, align 4, !tbaa !1
  %197 = sext i32 %196 to i64
  %198 = load i32, i32* %j, align 4, !tbaa !1
  %199 = sext i32 %198 to i64
  %200 = load i32, i32* %i, align 4, !tbaa !1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [5 x [1 x [10 x i16]]], [5 x [1 x [10 x i16]]]* @g_135, i32 0, i64 %201
  %203 = getelementptr inbounds [1 x [10 x i16]], [1 x [10 x i16]]* %202, i32 0, i64 %199
  %204 = getelementptr inbounds [10 x i16], [10 x i16]* %203, i32 0, i64 %197
  %205 = load i16, i16* %204, align 2, !tbaa !10
  %206 = sext i16 %205 to i64
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %206, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 %207)
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

; <label>:210                                     ; preds = %195
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = load i32, i32* %j, align 4, !tbaa !1
  %213 = load i32, i32* %k, align 4, !tbaa !1
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %211, i32 %212, i32 %213)
  br label %215

; <label>:215                                     ; preds = %210, %195
  br label %216

; <label>:216                                     ; preds = %215
  %217 = load i32, i32* %k, align 4, !tbaa !1
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %k, align 4, !tbaa !1
  br label %192

; <label>:219                                     ; preds = %192
  br label %220

; <label>:220                                     ; preds = %219
  %221 = load i32, i32* %j, align 4, !tbaa !1
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %j, align 4, !tbaa !1
  br label %188

; <label>:223                                     ; preds = %188
  br label %224

; <label>:224                                     ; preds = %223
  %225 = load i32, i32* %i, align 4, !tbaa !1
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %i, align 4, !tbaa !1
  br label %184

; <label>:227                                     ; preds = %184
  %228 = load i64, i64* @g_136, align 8, !tbaa !7
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %229)
  %230 = load i16, i16* @g_139, align 2, !tbaa !10
  %231 = zext i16 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %232)
  %233 = load i8, i8* @g_209, align 1, !tbaa !9
  %234 = zext i8 %233 to i64
  %235 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %235)
  %236 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_213, i32 0, i32 0), align 1, !tbaa !12
  %237 = sext i32 %236 to i64
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %238)
  %239 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_213, i32 0, i32 1), align 1, !tbaa !14
  %240 = zext i8 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %241)
  %242 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_213, i32 0, i32 2), align 1, !tbaa !15
  %243 = zext i8 %242 to i64
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %244)
  %245 = load i16, i16* @g_227, align 2, !tbaa !10
  %246 = sext i16 %245 to i64
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %247)
  %248 = load volatile i16, i16* @g_275, align 2, !tbaa !10
  %249 = zext i16 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %250)
  %251 = load i32, i32* @g_279, align 4, !tbaa !1
  %252 = zext i32 %251 to i64
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %253)
  %254 = load i64, i64* @g_319, align 8, !tbaa !7
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %255)
  %256 = load i32, i32* @g_561, align 4, !tbaa !1
  %257 = zext i32 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %258)
  %259 = load i32, i32* @g_715, align 4, !tbaa !1
  %260 = sext i32 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %261)
  %262 = load i64, i64* @g_814, align 8, !tbaa !7
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %263)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %304, %227
  %265 = load i32, i32* %i, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 4
  br i1 %266, label %267, label %307

; <label>:267                                     ; preds = %264
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %268

; <label>:268                                     ; preds = %300, %267
  %269 = load i32, i32* %j, align 4, !tbaa !1
  %270 = icmp slt i32 %269, 8
  br i1 %270, label %271, label %303

; <label>:271                                     ; preds = %268
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %272

; <label>:272                                     ; preds = %296, %271
  %273 = load i32, i32* %k, align 4, !tbaa !1
  %274 = icmp slt i32 %273, 3
  br i1 %274, label %275, label %299

; <label>:275                                     ; preds = %272
  %276 = load i32, i32* %k, align 4, !tbaa !1
  %277 = sext i32 %276 to i64
  %278 = load i32, i32* %j, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x [8 x [3 x i8]]], [4 x [8 x [3 x i8]]]* @g_880, i32 0, i64 %281
  %283 = getelementptr inbounds [8 x [3 x i8]], [8 x [3 x i8]]* %282, i32 0, i64 %279
  %284 = getelementptr inbounds [3 x i8], [3 x i8]* %283, i32 0, i64 %277
  %285 = load i8, i8* %284, align 1, !tbaa !9
  %286 = sext i8 %285 to i64
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %286, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 %287)
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

; <label>:290                                     ; preds = %275
  %291 = load i32, i32* %i, align 4, !tbaa !1
  %292 = load i32, i32* %j, align 4, !tbaa !1
  %293 = load i32, i32* %k, align 4, !tbaa !1
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %291, i32 %292, i32 %293)
  br label %295

; <label>:295                                     ; preds = %290, %275
  br label %296

; <label>:296                                     ; preds = %295
  %297 = load i32, i32* %k, align 4, !tbaa !1
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %k, align 4, !tbaa !1
  br label %272

; <label>:299                                     ; preds = %272
  br label %300

; <label>:300                                     ; preds = %299
  %301 = load i32, i32* %j, align 4, !tbaa !1
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %j, align 4, !tbaa !1
  br label %268

; <label>:303                                     ; preds = %268
  br label %304

; <label>:304                                     ; preds = %303
  %305 = load i32, i32* %i, align 4, !tbaa !1
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:307                                     ; preds = %264
  %308 = load i32, i32* @g_1016, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %310)
  %311 = load volatile i8, i8* @g_1075, align 1, !tbaa !9
  %312 = zext i8 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %313)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %314

; <label>:314                                     ; preds = %330, %307
  %315 = load i32, i32* %i, align 4, !tbaa !1
  %316 = icmp slt i32 %315, 7
  br i1 %316, label %317, label %333

; <label>:317                                     ; preds = %314
  %318 = load i32, i32* %i, align 4, !tbaa !1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [7 x i8], [7 x i8]* @g_1078, i32 0, i64 %319
  %321 = load volatile i8, i8* %320, align 1, !tbaa !9
  %322 = zext i8 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 %323)
  %324 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

; <label>:326                                     ; preds = %317
  %327 = load i32, i32* %i, align 4, !tbaa !1
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 %327)
  br label %329

; <label>:329                                     ; preds = %326, %317
  br label %330

; <label>:330                                     ; preds = %329
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %i, align 4, !tbaa !1
  br label %314

; <label>:333                                     ; preds = %314
  %334 = load volatile i8, i8* @g_1080, align 1, !tbaa !9
  %335 = zext i8 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %336)
  %337 = load volatile i8, i8* @g_1082, align 1, !tbaa !9
  %338 = zext i8 %337 to i64
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %339)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %340

; <label>:340                                     ; preds = %356, %333
  %341 = load i32, i32* %i, align 4, !tbaa !1
  %342 = icmp slt i32 %341, 3
  br i1 %342, label %343, label %359

; <label>:343                                     ; preds = %340
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [3 x i8], [3 x i8]* @g_1084, i32 0, i64 %345
  %347 = load volatile i8, i8* %346, align 1, !tbaa !9
  %348 = zext i8 %347 to i64
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 %349)
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

; <label>:352                                     ; preds = %343
  %353 = load i32, i32* %i, align 4, !tbaa !1
  %354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 %353)
  br label %355

; <label>:355                                     ; preds = %352, %343
  br label %356

; <label>:356                                     ; preds = %355
  %357 = load i32, i32* %i, align 4, !tbaa !1
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %i, align 4, !tbaa !1
  br label %340

; <label>:359                                     ; preds = %340
  %360 = load volatile i8, i8* @g_1086, align 1, !tbaa !9
  %361 = zext i8 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %362)
  %363 = load i8, i8* @g_1155, align 1, !tbaa !9
  %364 = sext i8 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %365)
  %366 = load i8, i8* @g_1157, align 1, !tbaa !9
  %367 = sext i8 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %368)
  %369 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1184, i32 0, i32 0), align 1, !tbaa !12
  %370 = sext i32 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 %371)
  %372 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_1184, i32 0, i32 1), align 1, !tbaa !14
  %373 = zext i8 %372 to i64
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %373, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 %374)
  %375 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_1184, i32 0, i32 2), align 1, !tbaa !15
  %376 = zext i8 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 %377)
  %378 = load i8, i8* @g_1461, align 1, !tbaa !9
  %379 = zext i8 %378 to i64
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %379, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %380)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %381

; <label>:381                                     ; preds = %421, %359
  %382 = load i32, i32* %i, align 4, !tbaa !1
  %383 = icmp slt i32 %382, 7
  br i1 %383, label %384, label %424

; <label>:384                                     ; preds = %381
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %385

; <label>:385                                     ; preds = %417, %384
  %386 = load i32, i32* %j, align 4, !tbaa !1
  %387 = icmp slt i32 %386, 2
  br i1 %387, label %388, label %420

; <label>:388                                     ; preds = %385
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %389

; <label>:389                                     ; preds = %413, %388
  %390 = load i32, i32* %k, align 4, !tbaa !1
  %391 = icmp slt i32 %390, 5
  br i1 %391, label %392, label %416

; <label>:392                                     ; preds = %389
  %393 = load i32, i32* %k, align 4, !tbaa !1
  %394 = sext i32 %393 to i64
  %395 = load i32, i32* %j, align 4, !tbaa !1
  %396 = sext i32 %395 to i64
  %397 = load i32, i32* %i, align 4, !tbaa !1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [7 x [2 x [5 x i16]]], [7 x [2 x [5 x i16]]]* @g_1470, i32 0, i64 %398
  %400 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* %399, i32 0, i64 %396
  %401 = getelementptr inbounds [5 x i16], [5 x i16]* %400, i32 0, i64 %394
  %402 = load volatile i16, i16* %401, align 2, !tbaa !10
  %403 = sext i16 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i32 %404)
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %412

; <label>:407                                     ; preds = %392
  %408 = load i32, i32* %i, align 4, !tbaa !1
  %409 = load i32, i32* %j, align 4, !tbaa !1
  %410 = load i32, i32* %k, align 4, !tbaa !1
  %411 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %408, i32 %409, i32 %410)
  br label %412

; <label>:412                                     ; preds = %407, %392
  br label %413

; <label>:413                                     ; preds = %412
  %414 = load i32, i32* %k, align 4, !tbaa !1
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %k, align 4, !tbaa !1
  br label %389

; <label>:416                                     ; preds = %389
  br label %417

; <label>:417                                     ; preds = %416
  %418 = load i32, i32* %j, align 4, !tbaa !1
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %j, align 4, !tbaa !1
  br label %385

; <label>:420                                     ; preds = %385
  br label %421

; <label>:421                                     ; preds = %420
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %i, align 4, !tbaa !1
  br label %381

; <label>:424                                     ; preds = %381
  %425 = load volatile i64, i64* @g_1472, align 8, !tbaa !7
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %425, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %426)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %427

; <label>:427                                     ; preds = %443, %424
  %428 = load i32, i32* %i, align 4, !tbaa !1
  %429 = icmp slt i32 %428, 3
  br i1 %429, label %430, label %446

; <label>:430                                     ; preds = %427
  %431 = load i32, i32* %i, align 4, !tbaa !1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [3 x i16], [3 x i16]* @g_1509, i32 0, i64 %432
  %434 = load volatile i16, i16* %433, align 2, !tbaa !10
  %435 = zext i16 %434 to i64
  %436 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %435, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 %436)
  %437 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %442

; <label>:439                                     ; preds = %430
  %440 = load i32, i32* %i, align 4, !tbaa !1
  %441 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 %440)
  br label %442

; <label>:442                                     ; preds = %439, %430
  br label %443

; <label>:443                                     ; preds = %442
  %444 = load i32, i32* %i, align 4, !tbaa !1
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %i, align 4, !tbaa !1
  br label %427

; <label>:446                                     ; preds = %427
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %447

; <label>:447                                     ; preds = %475, %446
  %448 = load i32, i32* %i, align 4, !tbaa !1
  %449 = icmp slt i32 %448, 9
  br i1 %449, label %450, label %478

; <label>:450                                     ; preds = %447
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %451

; <label>:451                                     ; preds = %471, %450
  %452 = load i32, i32* %j, align 4, !tbaa !1
  %453 = icmp slt i32 %452, 4
  br i1 %453, label %454, label %474

; <label>:454                                     ; preds = %451
  %455 = load i32, i32* %j, align 4, !tbaa !1
  %456 = sext i32 %455 to i64
  %457 = load i32, i32* %i, align 4, !tbaa !1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* @g_1623, i32 0, i64 %458
  %460 = getelementptr inbounds [4 x i32], [4 x i32]* %459, i32 0, i64 %456
  %461 = load i32, i32* %460, align 4, !tbaa !1
  %462 = sext i32 %461 to i64
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i32 %463)
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %470

; <label>:466                                     ; preds = %454
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = load i32, i32* %j, align 4, !tbaa !1
  %469 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i32 %467, i32 %468)
  br label %470

; <label>:470                                     ; preds = %466, %454
  br label %471

; <label>:471                                     ; preds = %470
  %472 = load i32, i32* %j, align 4, !tbaa !1
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %j, align 4, !tbaa !1
  br label %451

; <label>:474                                     ; preds = %451
  br label %475

; <label>:475                                     ; preds = %474
  %476 = load i32, i32* %i, align 4, !tbaa !1
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %i, align 4, !tbaa !1
  br label %447

; <label>:478                                     ; preds = %447
  %479 = load volatile i8, i8* @g_1631, align 1, !tbaa !9
  %480 = sext i8 %479 to i64
  %481 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %480, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %481)
  %482 = load i16, i16* @g_1661, align 2, !tbaa !10
  %483 = sext i16 %482 to i64
  %484 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %483, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %484)
  %485 = load i8, i8* @g_1841, align 1, !tbaa !9
  %486 = sext i8 %485 to i64
  %487 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %486, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %487)
  %488 = load i64, i64* @g_1872, align 8, !tbaa !7
  %489 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %488, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %489)
  %490 = load volatile i32, i32* @g_2050, align 4, !tbaa !1
  %491 = zext i32 %490 to i64
  %492 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %491, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %492)
  %493 = load i64, i64* @g_2130, align 8, !tbaa !7
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %493, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %494)
  %495 = load volatile i32, i32* @g_2181, align 4, !tbaa !1
  %496 = zext i32 %495 to i64
  %497 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %496, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %497)
  %498 = load i8, i8* @g_2268, align 1, !tbaa !9
  %499 = sext i8 %498 to i64
  %500 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %499, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %500)
  %501 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %502 = zext i32 %501 to i64
  %503 = xor i64 %502, 4294967295
  %504 = trunc i64 %503 to i32
  %505 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %504, i32 %505)
  %506 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %506) #1
  %507 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %507) #1
  %508 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %508) #1
  %509 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %509) #1
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
define internal signext i16 @func_1() #0 {
  %1 = alloca i16, align 2
  %l_7 = alloca i32, align 4
  %l_1158 = alloca i32, align 4
  %l_1840 = alloca i8*, align 8
  %l_2267 = alloca [9 x [1 x i8*]], align 16
  %l_2337 = alloca i32, align 4
  %l_2339 = alloca i32, align 4
  %l_2342 = alloca i32, align 4
  %l_2344 = alloca i32, align 4
  %l_2345 = alloca i32, align 4
  %l_2348 = alloca [2 x [5 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_6 = alloca i32, align 4
  %l_10 = alloca i32*, align 8
  %l_2304 = alloca i32, align 4
  %l_2318 = alloca i16****, align 8
  %l_2322 = alloca [4 x [4 x i64***]], align 16
  %l_2340 = alloca i32, align 4
  %l_2347 = alloca i32, align 4
  %l_2355 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %2 = alloca i32
  %l_1034 = alloca i16, align 2
  %l_2305 = alloca i32, align 4
  %l_2323 = alloca %struct.S0, align 1
  %l_2324 = alloca i32, align 4
  %l_2334 = alloca i32, align 4
  %l_2338 = alloca i32, align 4
  %l_2346 = alloca i32, align 4
  %l_2349 = alloca i32, align 4
  %l_15 = alloca [9 x i32], align 16
  %l_1153 = alloca i32, align 4
  %l_2332 = alloca i8*, align 8
  %l_2343 = alloca i32, align 4
  %l_2351 = alloca [9 x [3 x i32]], align 16
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %l_54 = alloca i32*, align 8
  %l_55 = alloca i32*, align 8
  %l_1041 = alloca [7 x i32], align 16
  %l_1154 = alloca i8*, align 8
  %l_1156 = alloca i8*, align 8
  %l_2327 = alloca [5 x i16****], align 16
  %l_2335 = alloca i32, align 4
  %l_2336 = alloca i32, align 4
  %l_2341 = alloca [2 x [7 x i32]], align 16
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %3 = bitcast i32* %l_7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -236244312, i32* %l_7, align 4, !tbaa !1
  %4 = bitcast i32* %l_1158 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 2, i32* %l_1158, align 4, !tbaa !1
  %5 = bitcast i8** %l_1840 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8* @g_1841, i8** %l_1840, align 8, !tbaa !5
  %6 = bitcast [9 x [1 x i8*]]* %l_2267 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #1
  %7 = bitcast i32* %l_2337 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -698644431, i32* %l_2337, align 4, !tbaa !1
  %8 = bitcast i32* %l_2339 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -1, i32* %l_2339, align 4, !tbaa !1
  %9 = bitcast i32* %l_2342 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -2, i32* %l_2342, align 4, !tbaa !1
  %10 = bitcast i32* %l_2344 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -1790900646, i32* %l_2344, align 4, !tbaa !1
  %11 = bitcast i32* %l_2345 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 1773995010, i32* %l_2345, align 4, !tbaa !1
  %12 = bitcast [2 x [5 x i32]]* %l_2348 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %12) #1
  %13 = bitcast [2 x [5 x i32]]* %l_2348 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast ([2 x [5 x i32]]* @func_1.l_2348 to i8*), i64 40, i32 16, i1 false)
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %16

; <label>:16                                      ; preds = %34, %0
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %18 = icmp slt i32 %17, 9
  br i1 %18, label %19, label %37

; <label>:19                                      ; preds = %16
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %20

; <label>:20                                      ; preds = %30, %19
  %21 = load i32, i32* %j, align 4, !tbaa !1
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %33

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %j, align 4, !tbaa !1
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [9 x [1 x i8*]], [9 x [1 x i8*]]* %l_2267, i32 0, i64 %27
  %29 = getelementptr inbounds [1 x i8*], [1 x i8*]* %28, i32 0, i64 %25
  store i8* @g_2268, i8** %29, align 8, !tbaa !5
  br label %30

; <label>:30                                      ; preds = %23
  %31 = load i32, i32* %j, align 4, !tbaa !1
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %j, align 4, !tbaa !1
  br label %20

; <label>:33                                      ; preds = %20
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %i, align 4, !tbaa !1
  br label %16

; <label>:37                                      ; preds = %16
  store i32 28, i32* @g_3, align 4, !tbaa !1
  br label %38

; <label>:38                                      ; preds = %186, %37
  %39 = load i32, i32* @g_3, align 4, !tbaa !1
  %40 = icmp ne i32 %39, -4
  br i1 %40, label %41, label %189

; <label>:41                                      ; preds = %38
  %42 = bitcast i32* %l_6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 -1, i32* %l_6, align 4, !tbaa !1
  %43 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store i32* %l_6, i32** %l_10, align 8, !tbaa !5
  %44 = bitcast i32* %l_2304 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 0, i32* %l_2304, align 4, !tbaa !1
  %45 = bitcast i16***** %l_2318 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i16**** null, i16***** %l_2318, align 8, !tbaa !5
  %46 = bitcast [4 x [4 x i64***]]* %l_2322 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %46) #1
  %47 = bitcast [4 x [4 x i64***]]* %l_2322 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast ([4 x [4 x i64***]]* @func_1.l_2322 to i8*), i64 128, i32 16, i1 false)
  %48 = bitcast i32* %l_2340 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 1044286740, i32* %l_2340, align 4, !tbaa !1
  %49 = bitcast i32* %l_2347 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 -9, i32* %l_2347, align 4, !tbaa !1
  %50 = bitcast i32* %l_2355 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 1783037566, i32* %l_2355, align 4, !tbaa !1
  %51 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i32, i32* %l_6, align 4, !tbaa !1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

; <label>:55                                      ; preds = %41
  %56 = load i32, i32* @g_3, align 4, !tbaa !1
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %1
  store i32 1, i32* %2
  br label %174

; <label>:58                                      ; preds = %41
  %59 = load i32, i32* %l_7, align 4, !tbaa !1
  %60 = add i32 %59, -1
  store i32 %60, i32* %l_7, align 4, !tbaa !1
  br label %61

; <label>:61                                      ; preds = %58
  %62 = load i32*, i32** %l_10, align 8, !tbaa !5
  store i32 -440236594, i32* %62, align 4, !tbaa !1
  store i32 -18, i32* %l_6, align 4, !tbaa !1
  br label %63

; <label>:63                                      ; preds = %168, %61
  %64 = load i32, i32* %l_6, align 4, !tbaa !1
  %65 = icmp eq i32 %64, 14
  br i1 %65, label %66, label %173

; <label>:66                                      ; preds = %63
  %67 = bitcast i16* %l_1034 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %67) #1
  store i16 -4174, i16* %l_1034, align 2, !tbaa !10
  %68 = bitcast i32* %l_2305 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  store i32 2088387823, i32* %l_2305, align 4, !tbaa !1
  %69 = bitcast %struct.S0* %l_2323 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %69) #1
  %70 = bitcast %struct.S0* %l_2323 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* bitcast (%struct.S0* @func_1.l_2323 to i8*), i64 6, i32 1, i1 false)
  %71 = bitcast i32* %l_2324 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  store i32 0, i32* %l_2324, align 4, !tbaa !1
  %72 = bitcast i32* %l_2334 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  store i32 -1, i32* %l_2334, align 4, !tbaa !1
  %73 = bitcast i32* %l_2338 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  store i32 -787861195, i32* %l_2338, align 4, !tbaa !1
  %74 = bitcast i32* %l_2346 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  store i32 -5, i32* %l_2346, align 4, !tbaa !1
  %75 = bitcast i32* %l_2349 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  store i32 1, i32* %l_2349, align 4, !tbaa !1
  store i32 -17, i32* %l_7, align 4, !tbaa !1
  br label %76

; <label>:76                                      ; preds = %148, %66
  %77 = load i32, i32* %l_7, align 4, !tbaa !1
  %78 = icmp ne i32 %77, 18
  br i1 %78, label %79, label %153

; <label>:79                                      ; preds = %76
  %80 = bitcast [9 x i32]* %l_15 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %80) #1
  %81 = bitcast [9 x i32]* %l_15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* bitcast ([9 x i32]* @func_1.l_15 to i8*), i64 36, i32 16, i1 false)
  %82 = bitcast i32* %l_1153 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  store i32 1, i32* %l_1153, align 4, !tbaa !1
  %83 = bitcast i8** %l_2332 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  store i8* getelementptr inbounds ([4 x [8 x [3 x i8]]], [4 x [8 x [3 x i8]]]* @g_880, i32 0, i64 2, i64 2, i64 2), i8** %l_2332, align 8, !tbaa !5
  %84 = bitcast i32* %l_2343 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  store i32 1, i32* %l_2343, align 4, !tbaa !1
  %85 = bitcast [9 x [3 x i32]]* %l_2351 to i8*
  call void @llvm.lifetime.start(i64 108, i8* %85) #1
  %86 = bitcast [9 x [3 x i32]]* %l_2351 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* bitcast ([9 x [3 x i32]]* @func_1.l_2351 to i8*), i64 108, i32 16, i1 false)
  %87 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  store i32 3, i32* @g_17, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %137, %79
  %90 = load i32, i32* @g_17, align 4, !tbaa !1
  %91 = icmp sle i32 %90, 8
  br i1 %91, label %92, label %140

; <label>:92                                      ; preds = %89
  %93 = bitcast i32** %l_54 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  store i32* null, i32** %l_54, align 8, !tbaa !5
  %94 = bitcast i32** %l_55 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  store i32* @g_56, i32** %l_55, align 8, !tbaa !5
  %95 = bitcast [7 x i32]* %l_1041 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %95) #1
  %96 = bitcast [7 x i32]* %l_1041 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* bitcast ([7 x i32]* @func_1.l_1041 to i8*), i64 28, i32 16, i1 false)
  %97 = bitcast i8** %l_1154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  store i8* @g_1155, i8** %l_1154, align 8, !tbaa !5
  %98 = bitcast i8** %l_1156 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  store i8* @g_1157, i8** %l_1156, align 8, !tbaa !5
  %99 = bitcast [5 x i16****]* %l_2327 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %99) #1
  %100 = bitcast i32* %l_2335 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  store i32 1144901155, i32* %l_2335, align 4, !tbaa !1
  %101 = bitcast i32* %l_2336 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  store i32 -1234557604, i32* %l_2336, align 4, !tbaa !1
  %102 = bitcast [2 x [7 x i32]]* %l_2341 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %102) #1
  %103 = bitcast [2 x [7 x i32]]* %l_2341 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* bitcast ([2 x [7 x i32]]* @func_1.l_2341 to i8*), i64 56, i32 16, i1 false)
  %104 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  store i32 0, i32* %i5, align 4, !tbaa !1
  br label %106

; <label>:106                                     ; preds = %113, %92
  %107 = load i32, i32* %i5, align 4, !tbaa !1
  %108 = icmp slt i32 %107, 5
  br i1 %108, label %109, label %116

; <label>:109                                     ; preds = %106
  %110 = load i32, i32* %i5, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [5 x i16****], [5 x i16****]* %l_2327, i32 0, i64 %111
  store i16**** @g_1224, i16***** %112, align 8, !tbaa !5
  br label %113

; <label>:113                                     ; preds = %109
  %114 = load i32, i32* %i5, align 4, !tbaa !1
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %i5, align 4, !tbaa !1
  br label %106

; <label>:116                                     ; preds = %106
  %117 = load i32, i32* @g_17, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [9 x i32], [9 x i32]* %l_15, i32 0, i64 %118
  %120 = load i32, i32* %119, align 4, !tbaa !1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

; <label>:122                                     ; preds = %116
  store i32 17, i32* %2
  br label %124

; <label>:123                                     ; preds = %116
  store i32 0, i32* %2
  br label %124

; <label>:124                                     ; preds = %123, %122
  %125 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast [2 x [7 x i32]]* %l_2341 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %127) #1
  %128 = bitcast i32* %l_2336 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %l_2335 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast [5 x i16****]* %l_2327 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %130) #1
  %131 = bitcast i8** %l_1156 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i8** %l_1154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast [7 x i32]* %l_1041 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %133) #1
  %134 = bitcast i32** %l_55 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i32** %l_54 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %206 [
    i32 0, label %136
    i32 17, label %140
  ]

; <label>:136                                     ; preds = %124
  br label %137

; <label>:137                                     ; preds = %136
  %138 = load i32, i32* @g_17, align 4, !tbaa !1
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @g_17, align 4, !tbaa !1
  br label %89

; <label>:140                                     ; preds = %124, %89
  %141 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast [9 x [3 x i32]]* %l_2351 to i8*
  call void @llvm.lifetime.end(i64 108, i8* %143) #1
  %144 = bitcast i32* %l_2343 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i8** %l_2332 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i32* %l_1153 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast [9 x i32]* %l_15 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %147) #1
  br label %148

; <label>:148                                     ; preds = %140
  %149 = load i32, i32* %l_7, align 4, !tbaa !1
  %150 = trunc i32 %149 to i8
  %151 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %150, i8 signext 7)
  %152 = sext i8 %151 to i32
  store i32 %152, i32* %l_7, align 4, !tbaa !1
  br label %76

; <label>:153                                     ; preds = %76
  %154 = load i32*, i32** %l_10, align 8, !tbaa !5
  %155 = load i32, i32* %154, align 4, !tbaa !1
  %156 = load volatile i32**, i32*** @g_1955, align 8, !tbaa !5
  %157 = load i32*, i32** %156, align 8, !tbaa !5
  store i32 %155, i32* %157, align 4, !tbaa !1
  %158 = load i32, i32* %l_2355, align 4, !tbaa !1
  %159 = trunc i32 %158 to i16
  store i16 %159, i16* %1
  store i32 1, i32* %2
  %160 = bitcast i32* %l_2349 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %l_2346 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %l_2338 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %l_2334 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %l_2324 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast %struct.S0* %l_2323 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %165) #1
  %166 = bitcast i32* %l_2305 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i16* %l_1034 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %167) #1
  br label %174
                                                  ; No predecessors!
  %169 = load i32, i32* %l_6, align 4, !tbaa !1
  %170 = trunc i32 %169 to i16
  %171 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %170, i16 signext 8)
  %172 = sext i16 %171 to i32
  store i32 %172, i32* %l_6, align 4, !tbaa !1
  br label %63

; <label>:173                                     ; preds = %63
  store i32 0, i32* %2
  br label %174

; <label>:174                                     ; preds = %173, %153, %55
  %175 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %l_2355 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %l_2347 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %l_2340 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast [4 x [4 x i64***]]* %l_2322 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %180) #1
  %181 = bitcast i16***** %l_2318 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i32* %l_2304 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast i32* %l_6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %cleanup.dest.7 = load i32, i32* %2
  switch i32 %cleanup.dest.7, label %192 [
    i32 0, label %185
  ]

; <label>:185                                     ; preds = %174
  br label %186

; <label>:186                                     ; preds = %185
  %187 = load i32, i32* @g_3, align 4, !tbaa !1
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* @g_3, align 4, !tbaa !1
  br label %38

; <label>:189                                     ; preds = %38
  %190 = load i32, i32* %l_2345, align 4, !tbaa !1
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %1
  store i32 1, i32* %2
  br label %192

; <label>:192                                     ; preds = %189, %174
  %193 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast [2 x [5 x i32]]* %l_2348 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %195) #1
  %196 = bitcast i32* %l_2345 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %l_2344 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %l_2342 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %l_2339 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %l_2337 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast [9 x [1 x i8*]]* %l_2267 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %201) #1
  %202 = bitcast i8** %l_1840 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast i32* %l_1158 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %l_7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = load i16, i16* %1
  ret i16 %205

; <label>:206                                     ; preds = %124
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
!12 = !{!13, !2, i64 0}
!13 = !{!"S0", !2, i64 0, !3, i64 4, !3, i64 5}
!14 = !{!13, !3, i64 4}
!15 = !{!13, !3, i64 5}
