; ModuleID = '00410.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global [5 x [2 x [1 x i32]]] [[2 x [1 x i32]] [[1 x i32] [i32 2033703142], [1 x i32] [i32 1836836837]], [2 x [1 x i32]] [[1 x i32] [i32 2033703142], [1 x i32] [i32 1836836837]], [2 x [1 x i32]] [[1 x i32] [i32 2033703142], [1 x i32] [i32 1836836837]], [2 x [1 x i32]] [[1 x i32] [i32 2033703142], [1 x i32] [i32 1836836837]], [2 x [1 x i32]] [[1 x i32] [i32 2033703142], [1 x i32] [i32 1836836837]]], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"g_4[i][j][k]\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_7 = internal global [7 x i32] [i32 1958972267, i32 1958972267, i32 1958972267, i32 1958972267, i32 1958972267, i32 1958972267, i32 1958972267], align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"g_7[i]\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_8 = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_9 = internal global i32 2, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"g_9\00", align 1
@g_10 = internal global i32 -6, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_10\00", align 1
@g_28 = internal global i16 0, align 2
@.str.8 = private unnamed_addr constant [5 x i8] c"g_28\00", align 1
@g_65 = internal global [10 x [8 x i16]] [[8 x i16] [i16 -5, i16 -16403, i16 11499, i16 11531, i16 11499, i16 -16403, i16 -5, i16 -16403], [8 x i16] [i16 -5, i16 11531, i16 1, i16 11531, i16 -5, i16 -9, i16 -5, i16 11531], [8 x i16] [i16 11499, i16 11531, i16 11499, i16 -16403, i16 -5, i16 -16403, i16 11499, i16 11531], [8 x i16] [i16 -5, i16 -16403, i16 11499, i16 11531, i16 11499, i16 -9, i16 11499, i16 -9], [8 x i16] [i16 11499, i16 -16403, i16 -5, i16 -16403, i16 11499, i16 11531, i16 11499, i16 -16403], [8 x i16] [i16 1, i16 -16403, i16 1, i16 -9, i16 11499, i16 -9, i16 1, i16 -16403], [8 x i16] [i16 11499, i16 -9, i16 1, i16 -16403, i16 1, i16 -9, i16 11499, i16 -9], [8 x i16] [i16 11499, i16 -16403, i16 -5, i16 -16403, i16 11499, i16 11531, i16 11499, i16 -16403], [8 x i16] [i16 1, i16 -16403, i16 1, i16 -9, i16 11499, i16 -9, i16 1, i16 -16403], [8 x i16] [i16 11499, i16 -9, i16 1, i16 -16403, i16 1, i16 -9, i16 11499, i16 -9]], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"g_65[i][j]\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_71 = internal global [6 x [1 x [7 x i32]]] [[1 x [7 x i32]] [[7 x i32] [i32 -548402125, i32 667899704, i32 667899704, i32 -548402125, i32 -46106952, i32 7, i32 7]], [1 x [7 x i32]] [[7 x i32] [i32 1049494379, i32 546372047, i32 9, i32 546372047, i32 1049494379, i32 546372047, i32 9]], [1 x [7 x i32]] [[7 x i32] [i32 -46106952, i32 -548402125, i32 667899704, i32 667899704, i32 -548402125, i32 -46106952, i32 7]], [1 x [7 x i32]] [[7 x i32] [i32 0, i32 1146754486, i32 0, i32 546372047, i32 0, i32 1146754486, i32 0]], [1 x [7 x i32]] [[7 x i32] [i32 -46106952, i32 667899704, i32 7, i32 -548402125, i32 -548402125, i32 7, i32 667899704]], [1 x [7 x i32]] [[7 x i32] [i32 1049494379, i32 1146754486, i32 9, i32 1146754486, i32 1049494379, i32 1146754486, i32 9]]], align 16
@.str.11 = private unnamed_addr constant [14 x i8] c"g_71[i][j][k]\00", align 1
@g_97 = internal global [10 x [3 x i8]] [[3 x i8] c"\FF\FF\C0", [3 x i8] c"\FE\C3\89", [3 x i8] c"\FF\FF\C0", [3 x i8] c"\FE\C3\89", [3 x i8] c"\FF\FF\C0", [3 x i8] c"\FE\C3\89", [3 x i8] c"\FF\FF\C0", [3 x i8] c"\FE\C3\89", [3 x i8] c"\FF\FF\C0", [3 x i8] c"\FE\C3\89"], align 16
@.str.12 = private unnamed_addr constant [11 x i8] c"g_97[i][j]\00", align 1
@g_100 = internal global i8 10, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"g_100\00", align 1
@g_129 = internal global i32 -1825483003, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_129\00", align 1
@g_130 = internal global i32 -1925958186, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_130\00", align 1
@g_131 = internal global i16 0, align 2
@.str.16 = private unnamed_addr constant [6 x i8] c"g_131\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_144\00", align 1
@g_150 = internal global i64 7, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_150\00", align 1
@g_211 = internal global i32 1, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_211\00", align 1
@g_241 = internal global i16 -4, align 2
@.str.20 = private unnamed_addr constant [6 x i8] c"g_241\00", align 1
@g_316 = internal global %union.U0 { i8 3, [3 x i8] undef }, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"g_316.f0\00", align 1
@g_366 = internal global i32 -2, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_366\00", align 1
@g_370 = internal global i32 -1, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_370\00", align 1
@g_373 = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_373\00", align 1
@g_374 = internal global i32 -1, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_374\00", align 1
@g_414 = internal global [3 x [2 x [9 x i8]]] [[2 x [9 x i8]] [[9 x i8] c"\C7\00\00\00\01\01\00\00\00", [9 x i8] c"\00\08\00\04\08\00g\00\00"], [2 x [9 x i8]] [[9 x i8] c"\C7\01\00\04\00\01\C7\00\00", [9 x i8] c"\FE\08\D4\00\00\D4g\D4\00"], [2 x [9 x i8]] [[9 x i8] c"\FE\00\00\FE\08\D4\00\00\D4", [9 x i8] c"\C7\00\00\00\01\01\00\00\00"]], align 16
@.str.26 = private unnamed_addr constant [15 x i8] c"g_414[i][j][k]\00", align 1
@g_427 = internal global [1 x i16] [i16 -4], align 2
@.str.27 = private unnamed_addr constant [9 x i8] c"g_427[i]\00", align 1
@g_451 = internal global i16 -1, align 2
@.str.28 = private unnamed_addr constant [6 x i8] c"g_451\00", align 1
@g_458 = internal global i64 -1, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_458\00", align 1
@g_517 = internal global i16 15222, align 2
@.str.30 = private unnamed_addr constant [6 x i8] c"g_517\00", align 1
@g_591 = internal global i8 62, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_591\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_601\00", align 1
@g_638 = internal global i16 -7475, align 2
@.str.33 = private unnamed_addr constant [6 x i8] c"g_638\00", align 1
@g_774 = internal global i32 3, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_774\00", align 1
@g_898 = internal constant [2 x i16] [i16 6, i16 6], align 2
@.str.35 = private unnamed_addr constant [9 x i8] c"g_898[i]\00", align 1
@g_947 = internal global [6 x i64] [i64 3, i64 3, i64 3, i64 3, i64 3, i64 3], align 16
@.str.36 = private unnamed_addr constant [9 x i8] c"g_947[i]\00", align 1
@g_1114 = internal global i64 -1, align 8
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1114\00", align 1
@g_1600 = internal global i32 1482225735, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1600\00", align 1
@g_1603 = internal global i32 0, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1603\00", align 1
@g_1744 = internal global i32 9, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1744\00", align 1
@g_1860 = internal global i64 0, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1860\00", align 1
@g_1866 = internal global [10 x [7 x [3 x i32]]] [[7 x [3 x i32]] [[3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639]], [7 x [3 x i32]] [[3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1]], [7 x [3 x i32]] [[3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639]], [7 x [3 x i32]] [[3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1]], [7 x [3 x i32]] [[3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639]], [7 x [3 x i32]] [[3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1]], [7 x [3 x i32]] [[3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639]], [7 x [3 x i32]] [[3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1]], [7 x [3 x i32]] [[3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639]], [7 x [3 x i32]] [[3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 844911639, i32 -1007770904, i32 844911639], [3 x i32] [i32 1, i32 1, i32 1]]], align 16
@.str.42 = private unnamed_addr constant [16 x i8] c"g_1866[i][j][k]\00", align 1
@g_1963 = internal global i64 -1, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1963\00", align 1
@g_2011 = internal global i16 -1, align 2
@.str.44 = private unnamed_addr constant [7 x i8] c"g_2011\00", align 1
@g_2073 = internal global i32 -10, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2073\00", align 1
@g_2142 = internal global i64 0, align 8
@.str.46 = private unnamed_addr constant [7 x i8] c"g_2142\00", align 1
@g_2167 = internal global i8 1, align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"g_2167\00", align 1
@g_2244 = internal global i32 -207566307, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"g_2244\00", align 1
@g_2288 = internal global i64 4187259592403439567, align 8
@.str.49 = private unnamed_addr constant [7 x i8] c"g_2288\00", align 1
@g_2461 = internal global i32 -1525762374, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"g_2461\00", align 1
@g_2489 = internal global i32 1, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2489\00", align 1
@g_2605 = internal global i8 56, align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"g_2605\00", align 1
@g_2682 = internal global i64 0, align 8
@.str.53 = private unnamed_addr constant [7 x i8] c"g_2682\00", align 1
@g_2916 = internal global [7 x i8] c"\A6\A6\A6\A6\A6\A6\A6", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"g_2916[i]\00", align 1
@g_2941 = internal global [6 x [6 x i8]] [[6 x i8] c"\FB\FB\F8\F8\FB\FB", [6 x i8] c"\FB\F8\F8\FB\FB\F8", [6 x i8] c"\FB\FB\F8\F8\FB\FB", [6 x i8] c"\FB\F8\F8\FB\FB\F8", [6 x i8] c"\FB\FB\F8\F8\FB\FB", [6 x i8] c"\FB\F8\F8\FB\FB\F8"], align 16
@.str.55 = private unnamed_addr constant [13 x i8] c"g_2941[i][j]\00", align 1
@g_2985 = internal global i64 6137658860953004238, align 8
@.str.56 = private unnamed_addr constant [7 x i8] c"g_2985\00", align 1
@g_3069 = internal global i64 -2128105036398344673, align 8
@.str.57 = private unnamed_addr constant [7 x i8] c"g_3069\00", align 1
@g_3087 = internal global i32 1, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"g_3087\00", align 1
@g_3130 = internal global i32 -1565436993, align 4
@.str.59 = private unnamed_addr constant [7 x i8] c"g_3130\00", align 1
@g_3182 = internal global i32 -1326425864, align 4
@.str.60 = private unnamed_addr constant [7 x i8] c"g_3182\00", align 1
@g_3387 = internal global i16 -1, align 2
@.str.61 = private unnamed_addr constant [7 x i8] c"g_3387\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"g_3654\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"g_3656\00", align 1
@g_3674 = internal global [5 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], align 16
@.str.64 = private unnamed_addr constant [10 x i8] c"g_3674[i]\00", align 1
@g_3799 = internal global i8 79, align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"g_3799\00", align 1
@g_3809 = internal global i64 9, align 8
@.str.66 = private unnamed_addr constant [7 x i8] c"g_3809\00", align 1
@g_3936 = internal global [7 x [10 x i32]] [[10 x i32] [i32 -1, i32 -6, i32 -1878662813, i32 0, i32 0, i32 -1878662813, i32 918619092, i32 0, i32 -1, i32 0], [10 x i32] [i32 0, i32 1073935293, i32 1, i32 35837693, i32 1, i32 1073935293, i32 0, i32 -762077821, i32 -902080464, i32 0], [10 x i32] [i32 -3, i32 1286103526, i32 1, i32 1, i32 1286103526, i32 -902080464, i32 -9, i32 -1, i32 1009948380, i32 -762077821], [10 x i32] [i32 918619092, i32 1286103526, i32 -1878662813, i32 0, i32 -6, i32 1494671940, i32 0, i32 0, i32 1494671940, i32 -6], [10 x i32] [i32 7, i32 1073935293, i32 1073935293, i32 7, i32 -1, i32 -762077821, i32 918619092, i32 -3, i32 1, i32 7], [10 x i32] [i32 -3, i32 1073935293, i32 1924781188, i32 -1, i32 -9, i32 -1878662813, i32 -1, i32 -9, i32 -5, i32 -10], [10 x i32] [i32 -762077821, i32 -3, i32 35837693, i32 1009948380, i32 1, i32 0, i32 1, i32 1009948380, i32 35837693, i32 -3]], align 16
@.str.67 = private unnamed_addr constant [13 x i8] c"g_3936[i][j]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_931 = internal global i8* getelementptr (i8, i8* getelementptr inbounds ([3 x [2 x [9 x i8]]], [3 x [2 x [9 x i8]]]* @g_414, i32 0, i32 0, i32 0, i32 0), i64 40), align 8
@func_1.l_3794 = private unnamed_addr constant [3 x [10 x [8 x i8**]]] [[10 x [8 x i8**]] [[8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** null, i8** @g_931, i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** null, i8** @g_931, i8** @g_931, i8** null, i8** null, i8** @g_931, i8** null, i8** @g_931]], [10 x [8 x i8**]] [[8 x i8**] [i8** null, i8** @g_931, i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** null, i8** null, i8** null, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931], [8 x i8**] [i8** @g_931, i8** null, i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** null, i8** @g_931, i8** null, i8** @g_931, i8** null, i8** @g_931, i8** @g_931, i8** @g_931]], [10 x [8 x i8**]] [[8 x i8**] [i8** @g_931, i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** null, i8** null, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** null, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** null], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** null, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** null, i8** @g_931, i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** null, i8** @g_931, i8** null, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931, i8** @g_931], [8 x i8**] [i8** @g_931, i8** @g_931, i8** @g_931, i8** null, i8** @g_931, i8** @g_931, i8** @g_931, i8** null]]], align 16
@g_1581 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i64]* @g_947 to i8*), i64 40) to i64*), align 8
@func_1.l_3958 = private unnamed_addr constant [5 x [10 x [5 x i16]]] [[10 x [5 x i16]] [[5 x i16] [i16 -6844, i16 18069, i16 18069, i16 -6844, i16 28594], [5 x i16] [i16 -5214, i16 9, i16 20756, i16 -9801, i16 -28018], [5 x i16] [i16 -1, i16 -27173, i16 9, i16 31464, i16 28436], [5 x i16] [i16 4, i16 0, i16 3, i16 -9801, i16 0], [5 x i16] [i16 -1, i16 24263, i16 27402, i16 -6844, i16 -25501], [5 x i16] [i16 -34, i16 -26308, i16 -21903, i16 -5, i16 -30104], [5 x i16] [i16 24263, i16 -11721, i16 18175, i16 3, i16 -18739], [5 x i16] [i16 21384, i16 6431, i16 1, i16 -28596, i16 -4583], [5 x i16] [i16 -16275, i16 -3, i16 31464, i16 1, i16 31811], [5 x i16] [i16 4, i16 -5, i16 18808, i16 9, i16 1]], [10 x [5 x i16]] [[5 x i16] [i16 1, i16 31811, i16 0, i16 31811, i16 1], [5 x i16] [i16 0, i16 897, i16 -34, i16 0, i16 9], [5 x i16] [i16 -6844, i16 4, i16 18175, i16 -6, i16 9], [5 x i16] [i16 1, i16 21384, i16 -23174, i16 897, i16 9], [5 x i16] [i16 22280, i16 -6, i16 -1, i16 18175, i16 1], [5 x i16] [i16 9, i16 19948, i16 3, i16 -28018, i16 1], [5 x i16] [i16 2703, i16 0, i16 22035, i16 -7, i16 31811], [5 x i16] [i16 0, i16 -30104, i16 19948, i16 0, i16 -4583], [5 x i16] [i16 -25501, i16 22280, i16 18069, i16 1, i16 -18739], [5 x i16] [i16 -9801, i16 21384, i16 -21405, i16 1, i16 -30104]], [10 x [5 x i16]] [[5 x i16] [i16 1, i16 -25501, i16 -1, i16 -1, i16 -25501], [5 x i16] [i16 7, i16 26005, i16 4912, i16 -1, i16 0], [5 x i16] [i16 -27173, i16 31811, i16 -8, i16 -7, i16 28436], [5 x i16] [i16 26005, i16 -1, i16 -2, i16 18808, i16 -28018], [5 x i16] [i16 -27173, i16 -1, i16 13468, i16 4, i16 27402], [5 x i16] [i16 -2, i16 -5, i16 897, i16 0, i16 -21903], [5 x i16] [i16 2, i16 1, i16 9, i16 0, i16 18175], [5 x i16] [i16 -34, i16 -23174, i16 6536, i16 -21903, i16 1], [5 x i16] [i16 18069, i16 9, i16 274, i16 22280, i16 31464], [5 x i16] [i16 1, i16 19948, i16 0, i16 133, i16 18808]], [10 x [5 x i16]] [[5 x i16] [i16 1, i16 13468, i16 0, i16 9, i16 0], [5 x i16] [i16 10614, i16 10614, i16 -1, i16 0, i16 -34], [5 x i16] [i16 0, i16 9, i16 1, i16 9, i16 18175], [5 x i16] [i16 26005, i16 28056, i16 -1, i16 23919, i16 -23174], [5 x i16] [i16 -16275, i16 9, i16 13809, i16 -16275, i16 -1], [5 x i16] [i16 20756, i16 10614, i16 -21405, i16 1, i16 3], [5 x i16] [i16 0, i16 13468, i16 1, i16 1, i16 22035], [5 x i16] [i16 0, i16 19948, i16 21384, i16 -34, i16 19948], [5 x i16] [i16 -1, i16 9, i16 -32347, i16 8, i16 18069], [5 x i16] [i16 9220, i16 -23174, i16 133, i16 23919, i16 -21405]], [10 x [5 x i16]] [[5 x i16] [i16 9, i16 1, i16 -25501, i16 -1, i16 -1], [5 x i16] [i16 2971, i16 -5, i16 2971, i16 0, i16 4912], [5 x i16] [i16 18175, i16 -32347, i16 -19674, i16 9, i16 -8], [5 x i16] [i16 0, i16 23919, i16 -9801, i16 10614, i16 -2], [5 x i16] [i16 1, i16 22280, i16 -19674, i16 -8, i16 0], [5 x i16] [i16 19948, i16 10125, i16 2971, i16 -21903, i16 133], [5 x i16] [i16 -16275, i16 18069, i16 -25501, i16 31464, i16 -18739], [5 x i16] [i16 6536, i16 9220, i16 133, i16 10125, i16 10614], [5 x i16] [i16 31464, i16 0, i16 -32347, i16 4, i16 1], [5 x i16] [i16 10614, i16 1, i16 21384, i16 3, i16 -2]]], align 16
@g_2516 = internal global i32** null, align 8
@func_1.l_3921 = private unnamed_addr constant [4 x i32***] [i32*** @g_2516, i32*** @g_2516, i32*** @g_2516, i32*** @g_2516], align 16
@g_2558 = internal global i8* @g_100, align 8
@func_1.l_27 = private unnamed_addr constant [6 x i16*] [i16* @g_28, i16* @g_28, i16* @g_28, i16* @g_28, i16* @g_28, i16* @g_28], align 16
@func_1.l_3886 = private unnamed_addr constant [7 x i16*] [i16* @g_517, i16* @g_517, i16* @g_517, i16* @g_517, i16* @g_517, i16* @g_517, i16* @g_517], align 16
@g_2749 = internal global i16** @g_2750, align 8
@g_2958 = internal constant i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [6 x i8]], [6 x [6 x i8]]* @g_2941, i32 0, i32 0, i32 0), i64 31), align 8
@g_3797 = internal global i8** @g_3798, align 8
@g_3712 = internal global i16*** @g_2749, align 8
@func_1.l_3910 = private unnamed_addr constant [1 x [8 x i32*]] [[8 x i32*] [i32* @g_3087, i32* @g_3087, i32* @g_3087, i32* @g_3087, i32* @g_3087, i32* @g_3087, i32* @g_3087, i32* @g_3087]], align 16
@func_1.l_3915 = private unnamed_addr constant [5 x [6 x i16*]] [[6 x i16*] [i16* @g_451, i16* @g_517, i16* @g_451, i16* null, i16* @g_451, i16* @g_451], [6 x i16*] [i16* @g_451, i16* @g_451, i16* @g_451, i16* @g_451, i16* @g_517, i16* @g_517], [6 x i16*] [i16* @g_517, i16* @g_451, i16* @g_451, i16* @g_451, i16* @g_517, i16* null], [6 x i16*] [i16* @g_451, i16* @g_517, i16* null, i16* null, i16* @g_517, i16* @g_451], [6 x i16*] [i16* @g_451, i16* @g_451, i16* @g_517, i16* @g_517, i16* @g_517, i16* @g_451]], align 16
@func_1.l_3918 = private unnamed_addr constant [7 x [8 x [1 x %union.U0]]] [[8 x [1 x %union.U0]] [[1 x %union.U0] [%union.U0 { i8 0, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 0, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }]], [8 x [1 x %union.U0]] [[1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 3, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 3, [3 x i8] undef }]], [8 x [1 x %union.U0]] [[1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 3, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }]], [8 x [1 x %union.U0]] [[1 x %union.U0] [%union.U0 { i8 3, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 3, [3 x i8] undef }]], [8 x [1 x %union.U0]] [[1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 3, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }]], [8 x [1 x %union.U0]] [[1 x %union.U0] [%union.U0 { i8 3, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 3, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }]], [8 x [1 x %union.U0]] [[1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 3, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 3, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 1, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }], [1 x %union.U0] [%union.U0 { i8 2, [3 x i8] undef }]]], align 16
@g_3711 = internal global i16**** @g_3712, align 8
@g_3010 = internal global i32**** @g_3011, align 8
@g_2557 = internal global i8** @g_2558, align 8
@g_3798 = internal constant i8* @g_3799, align 8
@g_3337 = internal global i32** @g_52, align 8
@g_1652 = internal global i32** null, align 8
@g_1580 = internal global i64** @g_1581, align 8
@g_2815 = internal global i16** @g_2750, align 8
@g_52 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [2 x [1 x i32]]]* @g_4 to i8*), i64 8) to i32*), align 8
@g_209 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [8 x i16]]* @g_65 to i8*), i64 92) to i16*), align 8
@g_51 = internal constant i32** @g_52, align 8
@g_2242 = internal global i32** @g_2243, align 8
@g_2098 = internal global i64**** @g_1579, align 8
@g_3742 = internal global %union.U0** @g_2060, align 8
@g_3084 = internal global i32* @g_9, align 8
@g_2750 = internal global i16* @g_517, align 8
@g_3011 = internal global i32*** @g_2516, align 8
@func_42.l_212 = private unnamed_addr constant [8 x i16] [i16 -3036, i16 -5465, i16 -3036, i16 -5465, i16 -3036, i16 -5465, i16 -3036, i16 -5465], align 16
@g_132 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_7 to i8*), i64 16) to i32*), align 8
@g_2243 = internal global i32* @g_2244, align 8
@g_1579 = internal global i64*** @g_1580, align 8
@g_2060 = internal global %union.U0* @g_316, align 8
@.str.68 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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

; <label>:91                                      ; preds = %131, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 5
  br i1 %93, label %94, label %134

; <label>:94                                      ; preds = %91
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %127, %94
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 2
  br i1 %97, label %98, label %130

; <label>:98                                      ; preds = %95
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %99

; <label>:99                                      ; preds = %123, %98
  %100 = load i32, i32* %k, align 4, !tbaa !1
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %102, label %126

; <label>:102                                     ; preds = %99
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [5 x [2 x [1 x i32]]], [5 x [2 x [1 x i32]]]* @g_4, i32 0, i64 %108
  %110 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %109, i32 0, i64 %106
  %111 = getelementptr inbounds [1 x i32], [1 x i32]* %110, i32 0, i64 %104
  %112 = load i32, i32* %111, align 4, !tbaa !1
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %114)
  %115 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

; <label>:117                                     ; preds = %102
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = load i32, i32* %k, align 4, !tbaa !1
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %118, i32 %119, i32 %120)
  br label %122

; <label>:122                                     ; preds = %117, %102
  br label %123

; <label>:123                                     ; preds = %122
  %124 = load i32, i32* %k, align 4, !tbaa !1
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %k, align 4, !tbaa !1
  br label %99

; <label>:126                                     ; preds = %99
  br label %127

; <label>:127                                     ; preds = %126
  %128 = load i32, i32* %j, align 4, !tbaa !1
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:130                                     ; preds = %95
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:134                                     ; preds = %91
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %135

; <label>:135                                     ; preds = %151, %134
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = icmp slt i32 %136, 7
  br i1 %137, label %138, label %154

; <label>:138                                     ; preds = %135
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [7 x i32], [7 x i32]* @g_7, i32 0, i64 %140
  %142 = load volatile i32, i32* %141, align 4, !tbaa !1
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %144)
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

; <label>:147                                     ; preds = %138
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %148)
  br label %150

; <label>:150                                     ; preds = %147, %138
  br label %151

; <label>:151                                     ; preds = %150
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %i, align 4, !tbaa !1
  br label %135

; <label>:154                                     ; preds = %135
  %155 = load volatile i32, i32* @g_8, align 4, !tbaa !1
  %156 = sext i32 %155 to i64
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %157)
  %158 = load i32, i32* @g_9, align 4, !tbaa !1
  %159 = sext i32 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %160)
  %161 = load i32, i32* @g_10, align 4, !tbaa !1
  %162 = sext i32 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %163)
  %164 = load i16, i16* @g_28, align 2, !tbaa !10
  %165 = zext i16 %164 to i64
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %166)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %167

; <label>:167                                     ; preds = %195, %154
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %169 = icmp slt i32 %168, 10
  br i1 %169, label %170, label %198

; <label>:170                                     ; preds = %167
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %171

; <label>:171                                     ; preds = %191, %170
  %172 = load i32, i32* %j, align 4, !tbaa !1
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %194

; <label>:174                                     ; preds = %171
  %175 = load i32, i32* %j, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [10 x [8 x i16]], [10 x [8 x i16]]* @g_65, i32 0, i64 %178
  %180 = getelementptr inbounds [8 x i16], [8 x i16]* %179, i32 0, i64 %176
  %181 = load i16, i16* %180, align 2, !tbaa !10
  %182 = zext i16 %181 to i64
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 %183)
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

; <label>:186                                     ; preds = %174
  %187 = load i32, i32* %i, align 4, !tbaa !1
  %188 = load i32, i32* %j, align 4, !tbaa !1
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %187, i32 %188)
  br label %190

; <label>:190                                     ; preds = %186, %174
  br label %191

; <label>:191                                     ; preds = %190
  %192 = load i32, i32* %j, align 4, !tbaa !1
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %j, align 4, !tbaa !1
  br label %171

; <label>:194                                     ; preds = %171
  br label %195

; <label>:195                                     ; preds = %194
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %i, align 4, !tbaa !1
  br label %167

; <label>:198                                     ; preds = %167
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %199

; <label>:199                                     ; preds = %239, %198
  %200 = load i32, i32* %i, align 4, !tbaa !1
  %201 = icmp slt i32 %200, 6
  br i1 %201, label %202, label %242

; <label>:202                                     ; preds = %199
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %235, %202
  %204 = load i32, i32* %j, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %206, label %238

; <label>:206                                     ; preds = %203
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %207

; <label>:207                                     ; preds = %231, %206
  %208 = load i32, i32* %k, align 4, !tbaa !1
  %209 = icmp slt i32 %208, 7
  br i1 %209, label %210, label %234

; <label>:210                                     ; preds = %207
  %211 = load i32, i32* %k, align 4, !tbaa !1
  %212 = sext i32 %211 to i64
  %213 = load i32, i32* %j, align 4, !tbaa !1
  %214 = sext i32 %213 to i64
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [6 x [1 x [7 x i32]]], [6 x [1 x [7 x i32]]]* @g_71, i32 0, i64 %216
  %218 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %217, i32 0, i64 %214
  %219 = getelementptr inbounds [7 x i32], [7 x i32]* %218, i32 0, i64 %212
  %220 = load i32, i32* %219, align 4, !tbaa !1
  %221 = sext i32 %220 to i64
  %222 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %221, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %222)
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

; <label>:225                                     ; preds = %210
  %226 = load i32, i32* %i, align 4, !tbaa !1
  %227 = load i32, i32* %j, align 4, !tbaa !1
  %228 = load i32, i32* %k, align 4, !tbaa !1
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %226, i32 %227, i32 %228)
  br label %230

; <label>:230                                     ; preds = %225, %210
  br label %231

; <label>:231                                     ; preds = %230
  %232 = load i32, i32* %k, align 4, !tbaa !1
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %k, align 4, !tbaa !1
  br label %207

; <label>:234                                     ; preds = %207
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load i32, i32* %j, align 4, !tbaa !1
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %j, align 4, !tbaa !1
  br label %203

; <label>:238                                     ; preds = %203
  br label %239

; <label>:239                                     ; preds = %238
  %240 = load i32, i32* %i, align 4, !tbaa !1
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %i, align 4, !tbaa !1
  br label %199

; <label>:242                                     ; preds = %199
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %243

; <label>:243                                     ; preds = %271, %242
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = icmp slt i32 %244, 10
  br i1 %245, label %246, label %274

; <label>:246                                     ; preds = %243
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %247

; <label>:247                                     ; preds = %267, %246
  %248 = load i32, i32* %j, align 4, !tbaa !1
  %249 = icmp slt i32 %248, 3
  br i1 %249, label %250, label %270

; <label>:250                                     ; preds = %247
  %251 = load i32, i32* %j, align 4, !tbaa !1
  %252 = sext i32 %251 to i64
  %253 = load i32, i32* %i, align 4, !tbaa !1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @g_97, i32 0, i64 %254
  %256 = getelementptr inbounds [3 x i8], [3 x i8]* %255, i32 0, i64 %252
  %257 = load i8, i8* %256, align 1, !tbaa !9
  %258 = zext i8 %257 to i64
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 %259)
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

; <label>:262                                     ; preds = %250
  %263 = load i32, i32* %i, align 4, !tbaa !1
  %264 = load i32, i32* %j, align 4, !tbaa !1
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %263, i32 %264)
  br label %266

; <label>:266                                     ; preds = %262, %250
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i32, i32* %j, align 4, !tbaa !1
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %j, align 4, !tbaa !1
  br label %247

; <label>:270                                     ; preds = %247
  br label %271

; <label>:271                                     ; preds = %270
  %272 = load i32, i32* %i, align 4, !tbaa !1
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %i, align 4, !tbaa !1
  br label %243

; <label>:274                                     ; preds = %243
  %275 = load i8, i8* @g_100, align 1, !tbaa !9
  %276 = sext i8 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %277)
  %278 = load i32, i32* @g_129, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %280)
  %281 = load i32, i32* @g_130, align 4, !tbaa !1
  %282 = zext i32 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %283)
  %284 = load i16, i16* @g_131, align 2, !tbaa !10
  %285 = zext i16 %284 to i64
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %286)
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %287)
  %288 = load i64, i64* @g_150, align 8, !tbaa !7
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %289)
  %290 = load i32, i32* @g_211, align 4, !tbaa !1
  %291 = sext i32 %290 to i64
  %292 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %292)
  %293 = load volatile i16, i16* @g_241, align 2, !tbaa !10
  %294 = zext i16 %293 to i64
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %295)
  %296 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_316, i32 0, i32 0), align 4
  %297 = and i8 %296, 3
  %298 = zext i8 %297 to i32
  %299 = zext i32 %298 to i64
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %299, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %300)
  %301 = load i32, i32* @g_366, align 4, !tbaa !1
  %302 = zext i32 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %303)
  %304 = load i32, i32* @g_370, align 4, !tbaa !1
  %305 = zext i32 %304 to i64
  %306 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %306)
  %307 = load i32, i32* @g_373, align 4, !tbaa !1
  %308 = zext i32 %307 to i64
  %309 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %309)
  %310 = load i32, i32* @g_374, align 4, !tbaa !1
  %311 = sext i32 %310 to i64
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %312)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %313

; <label>:313                                     ; preds = %353, %274
  %314 = load i32, i32* %i, align 4, !tbaa !1
  %315 = icmp slt i32 %314, 3
  br i1 %315, label %316, label %356

; <label>:316                                     ; preds = %313
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %317

; <label>:317                                     ; preds = %349, %316
  %318 = load i32, i32* %j, align 4, !tbaa !1
  %319 = icmp slt i32 %318, 2
  br i1 %319, label %320, label %352

; <label>:320                                     ; preds = %317
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %321

; <label>:321                                     ; preds = %345, %320
  %322 = load i32, i32* %k, align 4, !tbaa !1
  %323 = icmp slt i32 %322, 9
  br i1 %323, label %324, label %348

; <label>:324                                     ; preds = %321
  %325 = load i32, i32* %k, align 4, !tbaa !1
  %326 = sext i32 %325 to i64
  %327 = load i32, i32* %j, align 4, !tbaa !1
  %328 = sext i32 %327 to i64
  %329 = load i32, i32* %i, align 4, !tbaa !1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [3 x [2 x [9 x i8]]], [3 x [2 x [9 x i8]]]* @g_414, i32 0, i64 %330
  %332 = getelementptr inbounds [2 x [9 x i8]], [2 x [9 x i8]]* %331, i32 0, i64 %328
  %333 = getelementptr inbounds [9 x i8], [9 x i8]* %332, i32 0, i64 %326
  %334 = load i8, i8* %333, align 1, !tbaa !9
  %335 = zext i8 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i32 %336)
  %337 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

; <label>:339                                     ; preds = %324
  %340 = load i32, i32* %i, align 4, !tbaa !1
  %341 = load i32, i32* %j, align 4, !tbaa !1
  %342 = load i32, i32* %k, align 4, !tbaa !1
  %343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %340, i32 %341, i32 %342)
  br label %344

; <label>:344                                     ; preds = %339, %324
  br label %345

; <label>:345                                     ; preds = %344
  %346 = load i32, i32* %k, align 4, !tbaa !1
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %k, align 4, !tbaa !1
  br label %321

; <label>:348                                     ; preds = %321
  br label %349

; <label>:349                                     ; preds = %348
  %350 = load i32, i32* %j, align 4, !tbaa !1
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %j, align 4, !tbaa !1
  br label %317

; <label>:352                                     ; preds = %317
  br label %353

; <label>:353                                     ; preds = %352
  %354 = load i32, i32* %i, align 4, !tbaa !1
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %i, align 4, !tbaa !1
  br label %313

; <label>:356                                     ; preds = %313
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %357

; <label>:357                                     ; preds = %373, %356
  %358 = load i32, i32* %i, align 4, !tbaa !1
  %359 = icmp slt i32 %358, 1
  br i1 %359, label %360, label %376

; <label>:360                                     ; preds = %357
  %361 = load i32, i32* %i, align 4, !tbaa !1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [1 x i16], [1 x i16]* @g_427, i32 0, i64 %362
  %364 = load i16, i16* %363, align 2, !tbaa !10
  %365 = zext i16 %364 to i64
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %365, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %366)
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

; <label>:369                                     ; preds = %360
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %370)
  br label %372

; <label>:372                                     ; preds = %369, %360
  br label %373

; <label>:373                                     ; preds = %372
  %374 = load i32, i32* %i, align 4, !tbaa !1
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %i, align 4, !tbaa !1
  br label %357

; <label>:376                                     ; preds = %357
  %377 = load i16, i16* @g_451, align 2, !tbaa !10
  %378 = sext i16 %377 to i64
  %379 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %379)
  %380 = load i64, i64* @g_458, align 8, !tbaa !7
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %381)
  %382 = load i16, i16* @g_517, align 2, !tbaa !10
  %383 = sext i16 %382 to i64
  %384 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %383, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %384)
  %385 = load volatile i8, i8* @g_591, align 1, !tbaa !9
  %386 = sext i8 %385 to i64
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %386, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %387)
  %388 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %388)
  %389 = load volatile i16, i16* @g_638, align 2, !tbaa !10
  %390 = sext i16 %389 to i64
  %391 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %390, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %391)
  %392 = load i32, i32* @g_774, align 4, !tbaa !1
  %393 = sext i32 %392 to i64
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %394)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %395

; <label>:395                                     ; preds = %411, %376
  %396 = load i32, i32* %i, align 4, !tbaa !1
  %397 = icmp slt i32 %396, 2
  br i1 %397, label %398, label %414

; <label>:398                                     ; preds = %395
  %399 = load i32, i32* %i, align 4, !tbaa !1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [2 x i16], [2 x i16]* @g_898, i32 0, i64 %400
  %402 = load volatile i16, i16* %401, align 2, !tbaa !10
  %403 = zext i16 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %404)
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

; <label>:407                                     ; preds = %398
  %408 = load i32, i32* %i, align 4, !tbaa !1
  %409 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %408)
  br label %410

; <label>:410                                     ; preds = %407, %398
  br label %411

; <label>:411                                     ; preds = %410
  %412 = load i32, i32* %i, align 4, !tbaa !1
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %i, align 4, !tbaa !1
  br label %395

; <label>:414                                     ; preds = %395
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %415

; <label>:415                                     ; preds = %430, %414
  %416 = load i32, i32* %i, align 4, !tbaa !1
  %417 = icmp slt i32 %416, 6
  br i1 %417, label %418, label %433

; <label>:418                                     ; preds = %415
  %419 = load i32, i32* %i, align 4, !tbaa !1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [6 x i64], [6 x i64]* @g_947, i32 0, i64 %420
  %422 = load i64, i64* %421, align 8, !tbaa !7
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %422, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %423)
  %424 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

; <label>:426                                     ; preds = %418
  %427 = load i32, i32* %i, align 4, !tbaa !1
  %428 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %427)
  br label %429

; <label>:429                                     ; preds = %426, %418
  br label %430

; <label>:430                                     ; preds = %429
  %431 = load i32, i32* %i, align 4, !tbaa !1
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %i, align 4, !tbaa !1
  br label %415

; <label>:433                                     ; preds = %415
  %434 = load i64, i64* @g_1114, align 8, !tbaa !7
  %435 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %434, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %435)
  %436 = load i32, i32* @g_1600, align 4, !tbaa !1
  %437 = sext i32 %436 to i64
  %438 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %437, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %438)
  %439 = load i32, i32* @g_1603, align 4, !tbaa !1
  %440 = sext i32 %439 to i64
  %441 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %440, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %441)
  %442 = load i32, i32* @g_1744, align 4, !tbaa !1
  %443 = zext i32 %442 to i64
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %443, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %444)
  %445 = load i64, i64* @g_1860, align 8, !tbaa !7
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %446)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %447

; <label>:447                                     ; preds = %487, %433
  %448 = load i32, i32* %i, align 4, !tbaa !1
  %449 = icmp slt i32 %448, 10
  br i1 %449, label %450, label %490

; <label>:450                                     ; preds = %447
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %451

; <label>:451                                     ; preds = %483, %450
  %452 = load i32, i32* %j, align 4, !tbaa !1
  %453 = icmp slt i32 %452, 7
  br i1 %453, label %454, label %486

; <label>:454                                     ; preds = %451
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %455

; <label>:455                                     ; preds = %479, %454
  %456 = load i32, i32* %k, align 4, !tbaa !1
  %457 = icmp slt i32 %456, 3
  br i1 %457, label %458, label %482

; <label>:458                                     ; preds = %455
  %459 = load i32, i32* %k, align 4, !tbaa !1
  %460 = sext i32 %459 to i64
  %461 = load i32, i32* %j, align 4, !tbaa !1
  %462 = sext i32 %461 to i64
  %463 = load i32, i32* %i, align 4, !tbaa !1
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [10 x [7 x [3 x i32]]], [10 x [7 x [3 x i32]]]* @g_1866, i32 0, i64 %464
  %466 = getelementptr inbounds [7 x [3 x i32]], [7 x [3 x i32]]* %465, i32 0, i64 %462
  %467 = getelementptr inbounds [3 x i32], [3 x i32]* %466, i32 0, i64 %460
  %468 = load volatile i32, i32* %467, align 4, !tbaa !1
  %469 = zext i32 %468 to i64
  %470 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %469, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i32 %470)
  %471 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %478

; <label>:473                                     ; preds = %458
  %474 = load i32, i32* %i, align 4, !tbaa !1
  %475 = load i32, i32* %j, align 4, !tbaa !1
  %476 = load i32, i32* %k, align 4, !tbaa !1
  %477 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %474, i32 %475, i32 %476)
  br label %478

; <label>:478                                     ; preds = %473, %458
  br label %479

; <label>:479                                     ; preds = %478
  %480 = load i32, i32* %k, align 4, !tbaa !1
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %k, align 4, !tbaa !1
  br label %455

; <label>:482                                     ; preds = %455
  br label %483

; <label>:483                                     ; preds = %482
  %484 = load i32, i32* %j, align 4, !tbaa !1
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %j, align 4, !tbaa !1
  br label %451

; <label>:486                                     ; preds = %451
  br label %487

; <label>:487                                     ; preds = %486
  %488 = load i32, i32* %i, align 4, !tbaa !1
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %i, align 4, !tbaa !1
  br label %447

; <label>:490                                     ; preds = %447
  %491 = load i64, i64* @g_1963, align 8, !tbaa !7
  %492 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %491, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %492)
  %493 = load i16, i16* @g_2011, align 2, !tbaa !10
  %494 = zext i16 %493 to i64
  %495 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %494, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %495)
  %496 = load i32, i32* @g_2073, align 4, !tbaa !1
  %497 = sext i32 %496 to i64
  %498 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %497, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %498)
  %499 = load volatile i64, i64* @g_2142, align 8, !tbaa !7
  %500 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %499, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %500)
  %501 = load i8, i8* @g_2167, align 1, !tbaa !9
  %502 = sext i8 %501 to i64
  %503 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %502, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %503)
  %504 = load volatile i32, i32* @g_2244, align 4, !tbaa !1
  %505 = sext i32 %504 to i64
  %506 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %505, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %506)
  %507 = load volatile i64, i64* @g_2288, align 8, !tbaa !7
  %508 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %507, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %508)
  %509 = load i32, i32* @g_2461, align 4, !tbaa !1
  %510 = sext i32 %509 to i64
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %511)
  %512 = load volatile i32, i32* @g_2489, align 4, !tbaa !1
  %513 = sext i32 %512 to i64
  %514 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %513, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %514)
  %515 = load i8, i8* @g_2605, align 1, !tbaa !9
  %516 = zext i8 %515 to i64
  %517 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %516, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %517)
  %518 = load i64, i64* @g_2682, align 8, !tbaa !7
  %519 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %518, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %519)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %520

; <label>:520                                     ; preds = %536, %490
  %521 = load i32, i32* %i, align 4, !tbaa !1
  %522 = icmp slt i32 %521, 7
  br i1 %522, label %523, label %539

; <label>:523                                     ; preds = %520
  %524 = load i32, i32* %i, align 4, !tbaa !1
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [7 x i8], [7 x i8]* @g_2916, i32 0, i64 %525
  %527 = load i8, i8* %526, align 1, !tbaa !9
  %528 = zext i8 %527 to i64
  %529 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %528, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 %529)
  %530 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %535

; <label>:532                                     ; preds = %523
  %533 = load i32, i32* %i, align 4, !tbaa !1
  %534 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %533)
  br label %535

; <label>:535                                     ; preds = %532, %523
  br label %536

; <label>:536                                     ; preds = %535
  %537 = load i32, i32* %i, align 4, !tbaa !1
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %i, align 4, !tbaa !1
  br label %520

; <label>:539                                     ; preds = %520
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %540

; <label>:540                                     ; preds = %568, %539
  %541 = load i32, i32* %i, align 4, !tbaa !1
  %542 = icmp slt i32 %541, 6
  br i1 %542, label %543, label %571

; <label>:543                                     ; preds = %540
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %544

; <label>:544                                     ; preds = %564, %543
  %545 = load i32, i32* %j, align 4, !tbaa !1
  %546 = icmp slt i32 %545, 6
  br i1 %546, label %547, label %567

; <label>:547                                     ; preds = %544
  %548 = load i32, i32* %j, align 4, !tbaa !1
  %549 = sext i32 %548 to i64
  %550 = load i32, i32* %i, align 4, !tbaa !1
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* @g_2941, i32 0, i64 %551
  %553 = getelementptr inbounds [6 x i8], [6 x i8]* %552, i32 0, i64 %549
  %554 = load volatile i8, i8* %553, align 1, !tbaa !9
  %555 = zext i8 %554 to i64
  %556 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %555, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i32 %556)
  %557 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %563

; <label>:559                                     ; preds = %547
  %560 = load i32, i32* %i, align 4, !tbaa !1
  %561 = load i32, i32* %j, align 4, !tbaa !1
  %562 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %560, i32 %561)
  br label %563

; <label>:563                                     ; preds = %559, %547
  br label %564

; <label>:564                                     ; preds = %563
  %565 = load i32, i32* %j, align 4, !tbaa !1
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %j, align 4, !tbaa !1
  br label %544

; <label>:567                                     ; preds = %544
  br label %568

; <label>:568                                     ; preds = %567
  %569 = load i32, i32* %i, align 4, !tbaa !1
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %i, align 4, !tbaa !1
  br label %540

; <label>:571                                     ; preds = %540
  %572 = load i64, i64* @g_2985, align 8, !tbaa !7
  %573 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %572, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %573)
  %574 = load volatile i64, i64* @g_3069, align 8, !tbaa !7
  %575 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %574, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %575)
  %576 = load i32, i32* @g_3087, align 4, !tbaa !1
  %577 = zext i32 %576 to i64
  %578 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %577, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %578)
  %579 = load i32, i32* @g_3130, align 4, !tbaa !1
  %580 = zext i32 %579 to i64
  %581 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %580, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %581)
  %582 = load volatile i32, i32* @g_3182, align 4, !tbaa !1
  %583 = sext i32 %582 to i64
  %584 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %583, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %584)
  %585 = load volatile i16, i16* @g_3387, align 2, !tbaa !10
  %586 = zext i16 %585 to i64
  %587 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %586, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %587)
  %588 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -250350768, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %588)
  %589 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %589)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %590

; <label>:590                                     ; preds = %605, %571
  %591 = load i32, i32* %i, align 4, !tbaa !1
  %592 = icmp slt i32 %591, 5
  br i1 %592, label %593, label %608

; <label>:593                                     ; preds = %590
  %594 = load i32, i32* %i, align 4, !tbaa !1
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [5 x i64], [5 x i64]* @g_3674, i32 0, i64 %595
  %597 = load i64, i64* %596, align 8, !tbaa !7
  %598 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %597, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %598)
  %599 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %604

; <label>:601                                     ; preds = %593
  %602 = load i32, i32* %i, align 4, !tbaa !1
  %603 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %602)
  br label %604

; <label>:604                                     ; preds = %601, %593
  br label %605

; <label>:605                                     ; preds = %604
  %606 = load i32, i32* %i, align 4, !tbaa !1
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %i, align 4, !tbaa !1
  br label %590

; <label>:608                                     ; preds = %590
  %609 = load i8, i8* @g_3799, align 1, !tbaa !9
  %610 = zext i8 %609 to i64
  %611 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %610, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %611)
  %612 = load i64, i64* @g_3809, align 8, !tbaa !7
  %613 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %612, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %613)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %614

; <label>:614                                     ; preds = %642, %608
  %615 = load i32, i32* %i, align 4, !tbaa !1
  %616 = icmp slt i32 %615, 7
  br i1 %616, label %617, label %645

; <label>:617                                     ; preds = %614
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %618

; <label>:618                                     ; preds = %638, %617
  %619 = load i32, i32* %j, align 4, !tbaa !1
  %620 = icmp slt i32 %619, 10
  br i1 %620, label %621, label %641

; <label>:621                                     ; preds = %618
  %622 = load i32, i32* %j, align 4, !tbaa !1
  %623 = sext i32 %622 to i64
  %624 = load i32, i32* %i, align 4, !tbaa !1
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [7 x [10 x i32]], [7 x [10 x i32]]* @g_3936, i32 0, i64 %625
  %627 = getelementptr inbounds [10 x i32], [10 x i32]* %626, i32 0, i64 %623
  %628 = load i32, i32* %627, align 4, !tbaa !1
  %629 = sext i32 %628 to i64
  %630 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %629, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i32 %630)
  %631 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %637

; <label>:633                                     ; preds = %621
  %634 = load i32, i32* %i, align 4, !tbaa !1
  %635 = load i32, i32* %j, align 4, !tbaa !1
  %636 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %634, i32 %635)
  br label %637

; <label>:637                                     ; preds = %633, %621
  br label %638

; <label>:638                                     ; preds = %637
  %639 = load i32, i32* %j, align 4, !tbaa !1
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* %j, align 4, !tbaa !1
  br label %618

; <label>:641                                     ; preds = %618
  br label %642

; <label>:642                                     ; preds = %641
  %643 = load i32, i32* %i, align 4, !tbaa !1
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %i, align 4, !tbaa !1
  br label %614

; <label>:645                                     ; preds = %614
  %646 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %647 = zext i32 %646 to i64
  %648 = xor i64 %647, 4294967295
  %649 = trunc i64 %648 to i32
  %650 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %649, i32 %650)
  %651 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %651) #1
  %652 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %652) #1
  %653 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %653) #1
  %654 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %654) #1
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
  %l_2 = alloca i32, align 4
  %l_3 = alloca i32*, align 8
  %l_1704 = alloca i32*, align 8
  %l_1708 = alloca i32*, align 8
  %l_3794 = alloca [3 x [10 x [8 x i8**]]], align 16
  %l_3808 = alloca i32*, align 8
  %l_3891 = alloca i16, align 2
  %l_3892 = alloca i8, align 1
  %l_3893 = alloca i8, align 1
  %l_3927 = alloca i32, align 4
  %l_3954 = alloca i32, align 4
  %l_3966 = alloca i64, align 8
  %l_3974 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1705 = alloca i8, align 1
  %l_3787 = alloca %union.U0*, align 8
  %l_3795 = alloca i8**, align 8
  %l_3820 = alloca i32, align 4
  %l_3885 = alloca i64**, align 8
  %l_3890 = alloca [10 x i32****], align 16
  %l_3889 = alloca i32*****, align 8
  %l_3896 = alloca [2 x [5 x i32]], align 16
  %l_3924 = alloca i64, align 8
  %l_3931 = alloca i32**, align 8
  %l_3958 = alloca [5 x [10 x [5 x i16]]], align 16
  %l_3971 = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %1 = alloca i32
  %l_1702 = alloca i32*, align 8
  %l_1707 = alloca i32, align 4
  %l_3786 = alloca [3 x i32], align 4
  %l_3803 = alloca [2 x i8**], align 16
  %l_3837 = alloca i16, align 2
  %l_3867 = alloca i64, align 8
  %l_3868 = alloca [5 x i8], align 1
  %l_3871 = alloca i32, align 4
  %l_3873 = alloca [5 x [1 x i64]], align 16
  %l_3895 = alloca i16, align 2
  %l_3921 = alloca [4 x i32***], align 16
  %l_3923 = alloca i32**, align 8
  %l_3922 = alloca i32***, align 8
  %l_3925 = alloca i32, align 4
  %l_3928 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %l_27 = alloca [6 x i16*], align 16
  %l_35 = alloca i64, align 8
  %l_1703 = alloca i32**, align 8
  %l_1706 = alloca i8*, align 8
  %l_3771 = alloca i32**, align 8
  %l_3773 = alloca i32***, align 8
  %l_3775 = alloca i32***, align 8
  %l_3785 = alloca i32*, align 8
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %k8 = alloca i32, align 4
  %l_3886 = alloca [7 x i16*], align 16
  %l_3894 = alloca i32, align 4
  %i9 = alloca i32, align 4
  %l_3899 = alloca i32, align 4
  %l_3910 = alloca [1 x [8 x i32*]], align 16
  %l_3911 = alloca i64, align 8
  %l_3914 = alloca i16*, align 8
  %l_3915 = alloca [5 x [6 x i16*]], align 16
  %l_3918 = alloca [7 x [8 x [1 x %union.U0]]], align 16
  %l_3926 = alloca i32, align 4
  %l_3929 = alloca i32, align 4
  %l_3935 = alloca i32*, align 8
  %l_3934 = alloca i32**, align 8
  %l_3937 = alloca i32*, align 8
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %k12 = alloca i32, align 4
  %l_3930 = alloca i32*, align 8
  %l_3932 = alloca i32***, align 8
  %l_3933 = alloca [7 x i32***], align 16
  %l_3945 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %j14 = alloca i32, align 4
  %k15 = alloca i32, align 4
  %l_3957 = alloca i8, align 1
  %l_3959 = alloca i32, align 4
  %i16 = alloca i32, align 4
  %j17 = alloca i32, align 4
  %k18 = alloca i32, align 4
  %l_3970 = alloca i8*, align 8
  %l_3972 = alloca i32, align 4
  %2 = bitcast i32* %l_2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -1925152318, i32* %l_2, align 4, !tbaa !1
  %3 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* getelementptr inbounds ([5 x [2 x [1 x i32]]], [5 x [2 x [1 x i32]]]* @g_4, i32 0, i64 3, i64 0, i64 0), i32** %l_3, align 8, !tbaa !5
  %4 = bitcast i32** %l_1704 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* null, i32** %l_1704, align 8, !tbaa !5
  %5 = bitcast i32** %l_1708 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_1600, i32** %l_1708, align 8, !tbaa !5
  %6 = bitcast [3 x [10 x [8 x i8**]]]* %l_3794 to i8*
  call void @llvm.lifetime.start(i64 1920, i8* %6) #1
  %7 = bitcast [3 x [10 x [8 x i8**]]]* %l_3794 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([3 x [10 x [8 x i8**]]]* @func_1.l_3794 to i8*), i64 1920, i32 16, i1 false)
  %8 = bitcast i32** %l_3808 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_129, i32** %l_3808, align 8, !tbaa !5
  %9 = bitcast i16* %l_3891 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  store i16 -10, i16* %l_3891, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_3892) #1
  store i8 0, i8* %l_3892, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_3893) #1
  store i8 -1, i8* %l_3893, align 1, !tbaa !9
  %10 = bitcast i32* %l_3927 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 1, i32* %l_3927, align 4, !tbaa !1
  %11 = bitcast i32* %l_3954 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %l_3954, align 4, !tbaa !1
  %12 = bitcast i64* %l_3966 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 2, i64* %l_3966, align 8, !tbaa !7
  %13 = bitcast i32* %l_3974 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -1575291043, i32* %l_3974, align 4, !tbaa !1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  br label %17

; <label>:17                                      ; preds = %736, %0
  %18 = load i32, i32* %l_2, align 4, !tbaa !1
  %19 = load i32*, i32** %l_3, align 8, !tbaa !5
  %20 = load i32, i32* %19, align 4, !tbaa !1
  %21 = xor i32 %20, %18
  store i32 %21, i32* %19, align 4, !tbaa !1
  store i32 0, i32* %l_2, align 4, !tbaa !1
  br label %22

; <label>:22                                      ; preds = %752, %17
  %23 = load i32, i32* %l_2, align 4, !tbaa !1
  %24 = icmp ne i32 %23, 6
  br i1 %24, label %25, label %755

; <label>:25                                      ; preds = %22
  call void @llvm.lifetime.start(i64 1, i8* %l_1705) #1
  store i8 0, i8* %l_1705, align 1, !tbaa !9
  %26 = bitcast %union.U0** %l_3787 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store %union.U0* null, %union.U0** %l_3787, align 8, !tbaa !5
  %27 = bitcast i8*** %l_3795 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i8** @g_931, i8*** %l_3795, align 8, !tbaa !5
  %28 = bitcast i32* %l_3820 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 -1, i32* %l_3820, align 4, !tbaa !1
  %29 = bitcast i64*** %l_3885 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i64** @g_1581, i64*** %l_3885, align 8, !tbaa !5
  %30 = bitcast [10 x i32****]* %l_3890 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %30) #1
  %31 = bitcast i32****** %l_3889 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = getelementptr inbounds [10 x i32****], [10 x i32****]* %l_3890, i32 0, i64 7
  store i32***** %32, i32****** %l_3889, align 8, !tbaa !5
  %33 = bitcast [2 x [5 x i32]]* %l_3896 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %33) #1
  %34 = bitcast i64* %l_3924 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i64 -1481463081302300310, i64* %l_3924, align 8, !tbaa !7
  %35 = bitcast i32*** %l_3931 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i32** %l_3, i32*** %l_3931, align 8, !tbaa !5
  %36 = bitcast [5 x [10 x [5 x i16]]]* %l_3958 to i8*
  call void @llvm.lifetime.start(i64 500, i8* %36) #1
  %37 = bitcast [5 x [10 x [5 x i16]]]* %l_3958 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* bitcast ([5 x [10 x [5 x i16]]]* @func_1.l_3958 to i8*), i64 500, i32 16, i1 false)
  %38 = bitcast i32** %l_3971 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i32* @g_130, i32** %l_3971, align 8, !tbaa !5
  %39 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %42

; <label>:42                                      ; preds = %49, %25
  %43 = load i32, i32* %i1, align 4, !tbaa !1
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %45, label %52

; <label>:45                                      ; preds = %42
  %46 = load i32, i32* %i1, align 4, !tbaa !1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [10 x i32****], [10 x i32****]* %l_3890, i32 0, i64 %47
  store i32**** null, i32***** %48, align 8, !tbaa !5
  br label %49

; <label>:49                                      ; preds = %45
  %50 = load i32, i32* %i1, align 4, !tbaa !1
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %i1, align 4, !tbaa !1
  br label %42

; <label>:52                                      ; preds = %42
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %53

; <label>:53                                      ; preds = %71, %52
  %54 = load i32, i32* %i1, align 4, !tbaa !1
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %74

; <label>:56                                      ; preds = %53
  store i32 0, i32* %j2, align 4, !tbaa !1
  br label %57

; <label>:57                                      ; preds = %67, %56
  %58 = load i32, i32* %j2, align 4, !tbaa !1
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %70

; <label>:60                                      ; preds = %57
  %61 = load i32, i32* %j2, align 4, !tbaa !1
  %62 = sext i32 %61 to i64
  %63 = load i32, i32* %i1, align 4, !tbaa !1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %l_3896, i32 0, i64 %64
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %65, i32 0, i64 %62
  store i32 -1415412392, i32* %66, align 4, !tbaa !1
  br label %67

; <label>:67                                      ; preds = %60
  %68 = load i32, i32* %j2, align 4, !tbaa !1
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %j2, align 4, !tbaa !1
  br label %57

; <label>:70                                      ; preds = %57
  br label %71

; <label>:71                                      ; preds = %70
  %72 = load i32, i32* %i1, align 4, !tbaa !1
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i1, align 4, !tbaa !1
  br label %53

; <label>:74                                      ; preds = %53
  %75 = load i32*, i32** %l_3, align 8, !tbaa !5
  %76 = load i32, i32* %75, align 4, !tbaa !1
  %77 = xor i32 %76, 1
  store i32 %77, i32* %75, align 4, !tbaa !1
  %78 = load i32, i32* getelementptr inbounds ([5 x [2 x [1 x i32]]], [5 x [2 x [1 x i32]]]* @g_4, i32 0, i64 1, i64 0, i64 0), align 4, !tbaa !1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %74
  store i32 5, i32* %1
  br label %736

; <label>:81                                      ; preds = %74
  store i32 0, i32* @g_9, align 4, !tbaa !1
  br label %82

; <label>:82                                      ; preds = %639, %81
  %83 = load i32, i32* @g_9, align 4, !tbaa !1
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %642

; <label>:85                                      ; preds = %82
  %86 = bitcast i32** %l_1702 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  store i32* @g_130, i32** %l_1702, align 8, !tbaa !5
  %87 = bitcast i32* %l_1707 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  store i32 1845912959, i32* %l_1707, align 4, !tbaa !1
  %88 = bitcast [3 x i32]* %l_3786 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %88) #1
  %89 = bitcast [2 x i8**]* %l_3803 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %89) #1
  %90 = bitcast i16* %l_3837 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %90) #1
  store i16 1, i16* %l_3837, align 2, !tbaa !10
  %91 = bitcast i64* %l_3867 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  store i64 1, i64* %l_3867, align 8, !tbaa !7
  %92 = bitcast [5 x i8]* %l_3868 to i8*
  call void @llvm.lifetime.start(i64 5, i8* %92) #1
  %93 = bitcast i32* %l_3871 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  store i32 -1657130425, i32* %l_3871, align 4, !tbaa !1
  %94 = bitcast [5 x [1 x i64]]* %l_3873 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %94) #1
  %95 = bitcast i16* %l_3895 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %95) #1
  store i16 1, i16* %l_3895, align 2, !tbaa !10
  %96 = bitcast [4 x i32***]* %l_3921 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %96) #1
  %97 = bitcast [4 x i32***]* %l_3921 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* bitcast ([4 x i32***]* @func_1.l_3921 to i8*), i64 32, i32 16, i1 false)
  %98 = bitcast i32*** %l_3923 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  store i32** %l_1702, i32*** %l_3923, align 8, !tbaa !5
  %99 = bitcast i32**** %l_3922 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  store i32*** %l_3923, i32**** %l_3922, align 8, !tbaa !5
  %100 = bitcast i32* %l_3925 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  store i32 1, i32* %l_3925, align 4, !tbaa !1
  %101 = bitcast i32* %l_3928 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  store i32 207426514, i32* %l_3928, align 4, !tbaa !1
  %102 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  %103 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %104

; <label>:104                                     ; preds = %111, %85
  %105 = load i32, i32* %i4, align 4, !tbaa !1
  %106 = icmp slt i32 %105, 3
  br i1 %106, label %107, label %114

; <label>:107                                     ; preds = %104
  %108 = load i32, i32* %i4, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %l_3786, i32 0, i64 %109
  store i32 2031360516, i32* %110, align 4, !tbaa !1
  br label %111

; <label>:111                                     ; preds = %107
  %112 = load i32, i32* %i4, align 4, !tbaa !1
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %i4, align 4, !tbaa !1
  br label %104

; <label>:114                                     ; preds = %104
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %122, %114
  %116 = load i32, i32* %i4, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 2
  br i1 %117, label %118, label %125

; <label>:118                                     ; preds = %115
  %119 = load i32, i32* %i4, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x i8**], [2 x i8**]* %l_3803, i32 0, i64 %120
  store i8** @g_2558, i8*** %121, align 8, !tbaa !5
  br label %122

; <label>:122                                     ; preds = %118
  %123 = load i32, i32* %i4, align 4, !tbaa !1
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %i4, align 4, !tbaa !1
  br label %115

; <label>:125                                     ; preds = %115
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %126

; <label>:126                                     ; preds = %133, %125
  %127 = load i32, i32* %i4, align 4, !tbaa !1
  %128 = icmp slt i32 %127, 5
  br i1 %128, label %129, label %136

; <label>:129                                     ; preds = %126
  %130 = load i32, i32* %i4, align 4, !tbaa !1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [5 x i8], [5 x i8]* %l_3868, i32 0, i64 %131
  store i8 -1, i8* %132, align 1, !tbaa !9
  br label %133

; <label>:133                                     ; preds = %129
  %134 = load i32, i32* %i4, align 4, !tbaa !1
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %i4, align 4, !tbaa !1
  br label %126

; <label>:136                                     ; preds = %126
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %137

; <label>:137                                     ; preds = %155, %136
  %138 = load i32, i32* %i4, align 4, !tbaa !1
  %139 = icmp slt i32 %138, 5
  br i1 %139, label %140, label %158

; <label>:140                                     ; preds = %137
  store i32 0, i32* %j5, align 4, !tbaa !1
  br label %141

; <label>:141                                     ; preds = %151, %140
  %142 = load i32, i32* %j5, align 4, !tbaa !1
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %144, label %154

; <label>:144                                     ; preds = %141
  %145 = load i32, i32* %j5, align 4, !tbaa !1
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %i4, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [5 x [1 x i64]], [5 x [1 x i64]]* %l_3873, i32 0, i64 %148
  %150 = getelementptr inbounds [1 x i64], [1 x i64]* %149, i32 0, i64 %146
  store i64 2815052088074391839, i64* %150, align 8, !tbaa !7
  br label %151

; <label>:151                                     ; preds = %144
  %152 = load i32, i32* %j5, align 4, !tbaa !1
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %j5, align 4, !tbaa !1
  br label %141

; <label>:154                                     ; preds = %141
  br label %155

; <label>:155                                     ; preds = %154
  %156 = load i32, i32* %i4, align 4, !tbaa !1
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %i4, align 4, !tbaa !1
  br label %137

; <label>:158                                     ; preds = %137
  store i32 0, i32* @g_10, align 4, !tbaa !1
  br label %159

; <label>:159                                     ; preds = %211, %158
  %160 = load i32, i32* @g_10, align 4, !tbaa !1
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %214

; <label>:162                                     ; preds = %159
  %163 = bitcast [6 x i16*]* %l_27 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %163) #1
  %164 = bitcast [6 x i16*]* %l_27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* bitcast ([6 x i16*]* @func_1.l_27 to i8*), i64 48, i32 16, i1 false)
  %165 = bitcast i64* %l_35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #1
  store i64 -7397547109904455369, i64* %l_35, align 8, !tbaa !7
  %166 = bitcast i32*** %l_1703 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #1
  store i32** %l_1702, i32*** %l_1703, align 8, !tbaa !5
  %167 = bitcast i8** %l_1706 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  store i8* getelementptr inbounds ([10 x [3 x i8]], [10 x [3 x i8]]* @g_97, i32 0, i64 1, i64 0), i8** %l_1706, align 8, !tbaa !5
  %168 = bitcast i32*** %l_3771 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #1
  store i32** %l_1708, i32*** %l_3771, align 8, !tbaa !5
  %169 = bitcast i32**** %l_3773 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  store i32*** null, i32**** %l_3773, align 8, !tbaa !5
  %170 = bitcast i32**** %l_3775 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  store i32*** %l_3771, i32**** %l_3775, align 8, !tbaa !5
  %171 = bitcast i32** %l_3785 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #1
  store i32* @g_373, i32** %l_3785, align 8, !tbaa !5
  %172 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  %173 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  %174 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #1
  %175 = load i32, i32* @g_10, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* @g_10, align 4, !tbaa !1
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = load i32, i32* @g_9, align 4, !tbaa !1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [5 x [2 x [1 x i32]]], [5 x [2 x [1 x i32]]]* @g_4, i32 0, i64 %181
  %183 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %182, i32 0, i64 %179
  %184 = getelementptr inbounds [1 x i32], [1 x i32]* %183, i32 0, i64 %176
  %185 = load i32, i32* %184, align 4, !tbaa !1
  %186 = trunc i32 %185 to i8
  %187 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %186, i32 3)
  %188 = sext i8 %187 to i32
  %189 = load i32, i32* @g_9, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* @g_10, align 4, !tbaa !1
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = load i32, i32* @g_9, align 4, !tbaa !1
  %195 = add nsw i32 %194, 3
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [5 x [2 x [1 x i32]]], [5 x [2 x [1 x i32]]]* @g_4, i32 0, i64 %196
  %198 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %197, i32 0, i64 %193
  %199 = getelementptr inbounds [1 x i32], [1 x i32]* %198, i32 0, i64 %190
  store i32 %188, i32* %199, align 4, !tbaa !1
  %200 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32** %l_3785 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast i32**** %l_3775 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i32**** %l_3773 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32*** %l_3771 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i8** %l_1706 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i32*** %l_1703 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i64* %l_35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast [6 x i16*]* %l_27 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %210) #1
  br label %211

; <label>:211                                     ; preds = %162
  %212 = load i32, i32* @g_10, align 4, !tbaa !1
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* @g_10, align 4, !tbaa !1
  br label %159

; <label>:214                                     ; preds = %159
  %215 = load i32, i32* %l_3820, align 4, !tbaa !1
  %216 = load i8, i8* %l_1705, align 1, !tbaa !9
  %217 = zext i8 %216 to i32
  %218 = icmp ne i32 %215, %217
  %219 = zext i1 %218 to i32
  %220 = sext i32 %219 to i64
  %221 = call i64 @safe_mod_func_int64_t_s_s(i64 %220, i64 1)
  %222 = trunc i64 %221 to i16
  %223 = load i8, i8* %l_1705, align 1, !tbaa !9
  %224 = zext i8 %223 to i16
  %225 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %222, i16 signext %224)
  %226 = sext i16 %225 to i32
  %227 = getelementptr inbounds [5 x [1 x i64]], [5 x [1 x i64]]* %l_3873, i32 0, i64 2
  %228 = getelementptr inbounds [1 x i64], [1 x i64]* %227, i32 0, i64 0
  %229 = load i64, i64* %228, align 8, !tbaa !7
  %230 = trunc i64 %229 to i32
  %231 = call i32 @safe_div_func_uint32_t_u_u(i32 %226, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %313

; <label>:233                                     ; preds = %214
  %234 = bitcast [7 x i16*]* %l_3886 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %234) #1
  %235 = bitcast [7 x i16*]* %l_3886 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %235, i8* bitcast ([7 x i16*]* @func_1.l_3886 to i8*), i64 56, i32 16, i1 false)
  %236 = bitcast i32* %l_3894 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #1
  store i32 1765638969, i32* %l_3894, align 4, !tbaa !1
  %237 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #1
  %238 = load i64**, i64*** %l_3885, align 8, !tbaa !5
  %239 = icmp ne i64** %238, null
  br i1 %239, label %257, label %240

; <label>:240                                     ; preds = %233
  %241 = load i8, i8* %l_1705, align 1, !tbaa !9
  %242 = zext i8 %241 to i32
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %255, label %244

; <label>:244                                     ; preds = %240
  %245 = load i16**, i16*** @g_2749, align 8, !tbaa !5
  %246 = load i16*, i16** %245, align 8, !tbaa !5
  %247 = load i16, i16* %246, align 2, !tbaa !10
  %248 = sext i16 %247 to i32
  %249 = load i8, i8* %l_1705, align 1, !tbaa !9
  %250 = zext i8 %249 to i32
  %251 = load i32*, i32** %l_3, align 8, !tbaa !5
  %252 = load i32, i32* %251, align 4, !tbaa !1
  %253 = xor i32 %252, %250
  store i32 %253, i32* %251, align 4, !tbaa !1
  %254 = icmp sle i32 %248, %253
  br label %255

; <label>:255                                     ; preds = %244, %240
  %256 = phi i1 [ true, %240 ], [ %254, %244 ]
  br label %257

; <label>:257                                     ; preds = %255, %233
  %258 = phi i1 [ true, %233 ], [ %256, %255 ]
  %259 = zext i1 %258 to i32
  %260 = trunc i32 %259 to i8
  %261 = load i8*, i8** @g_2958, align 8, !tbaa !5
  %262 = load volatile i8, i8* %261, align 1, !tbaa !9
  %263 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %260, i8 zeroext %262)
  %264 = load i32*****, i32****** %l_3889, align 8, !tbaa !5
  %265 = icmp ne i32***** null, %264
  br i1 %265, label %266, label %272

; <label>:266                                     ; preds = %257
  %267 = load i8**, i8*** @g_3797, align 8, !tbaa !5
  %268 = load i8*, i8** %267, align 8, !tbaa !5
  %269 = load i8, i8* %268, align 1, !tbaa !9
  %270 = zext i8 %269 to i32
  %271 = icmp ne i32 %270, 0
  br label %272

; <label>:272                                     ; preds = %266, %257
  %273 = phi i1 [ false, %257 ], [ %271, %266 ]
  %274 = zext i1 %273 to i32
  %275 = trunc i32 %274 to i16
  %276 = load i16***, i16**** @g_3712, align 8, !tbaa !5
  %277 = load i16**, i16*** %276, align 8, !tbaa !5
  %278 = load i16*, i16** %277, align 8, !tbaa !5
  store i16 %275, i16* %278, align 2, !tbaa !10
  %279 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %275, i16 signext -23001)
  %280 = sext i16 %279 to i32
  %281 = getelementptr inbounds [3 x i32], [3 x i32]* %l_3786, i32 0, i64 1
  store i32 %280, i32* %281, align 4, !tbaa !1
  store i32 %280, i32* %l_1707, align 4, !tbaa !1
  %282 = load i32*, i32** %l_1708, align 8, !tbaa !5
  %283 = load i32, i32* %282, align 4, !tbaa !1
  %284 = sext i32 %283 to i64
  %285 = icmp ne i64 %284, -9
  %286 = zext i1 %285 to i32
  %287 = load i16, i16* %l_3891, align 2, !tbaa !10
  %288 = zext i16 %287 to i32
  %289 = and i32 %286, %288
  %290 = load i8, i8* %l_3892, align 1, !tbaa !9
  %291 = sext i8 %290 to i32
  %292 = and i32 %289, %291
  %293 = trunc i32 %292 to i16
  %294 = load i32, i32* %l_3894, align 4, !tbaa !1
  %295 = trunc i32 %294 to i16
  %296 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %293, i16 zeroext %295)
  %297 = zext i16 %296 to i32
  %298 = load i16, i16* %l_3895, align 2, !tbaa !10
  %299 = zext i16 %298 to i32
  %300 = and i32 %299, %297
  %301 = trunc i32 %300 to i16
  store i16 %301, i16* %l_3895, align 2, !tbaa !10
  %302 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %l_3896, i32 0, i64 0
  %303 = getelementptr inbounds [5 x i32], [5 x i32]* %302, i32 0, i64 0
  %304 = load i32, i32* %303, align 4, !tbaa !1
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

; <label>:306                                     ; preds = %272
  store i32 15, i32* %1
  br label %308

; <label>:307                                     ; preds = %272
  store i32 0, i32* %1
  br label %308

; <label>:308                                     ; preds = %307, %306
  %309 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %l_3894 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast [7 x i16*]* %l_3886 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %311) #1
  %cleanup.dest = load i32, i32* %1
  switch i32 %cleanup.dest, label %620 [
    i32 0, label %312
  ]

; <label>:312                                     ; preds = %308
  br label %619

; <label>:313                                     ; preds = %214
  %314 = bitcast i32* %l_3899 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %314) #1
  store i32 1, i32* %l_3899, align 4, !tbaa !1
  %315 = bitcast [1 x [8 x i32*]]* %l_3910 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %315) #1
  %316 = bitcast [1 x [8 x i32*]]* %l_3910 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %316, i8* bitcast ([1 x [8 x i32*]]* @func_1.l_3910 to i8*), i64 64, i32 16, i1 false)
  %317 = bitcast i64* %l_3911 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %317) #1
  store i64 -1, i64* %l_3911, align 8, !tbaa !7
  %318 = bitcast i16** %l_3914 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %318) #1
  store i16* null, i16** %l_3914, align 8, !tbaa !5
  %319 = bitcast [5 x [6 x i16*]]* %l_3915 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %319) #1
  %320 = bitcast [5 x [6 x i16*]]* %l_3915 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %320, i8* bitcast ([5 x [6 x i16*]]* @func_1.l_3915 to i8*), i64 240, i32 16, i1 false)
  %321 = bitcast [7 x [8 x [1 x %union.U0]]]* %l_3918 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %321) #1
  %322 = bitcast [7 x [8 x [1 x %union.U0]]]* %l_3918 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %322, i8* getelementptr inbounds ([7 x [8 x [1 x %union.U0]]], [7 x [8 x [1 x %union.U0]]]* @func_1.l_3918, i32 0, i32 0, i32 0, i32 0, i32 0), i64 224, i32 16, i1 false)
  %323 = bitcast i32* %l_3926 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %323) #1
  store i32 0, i32* %l_3926, align 4, !tbaa !1
  %324 = bitcast i32* %l_3929 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %324) #1
  store i32 1, i32* %l_3929, align 4, !tbaa !1
  %325 = bitcast i32** %l_3935 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %325) #1
  store i32* getelementptr inbounds ([7 x [10 x i32]], [7 x [10 x i32]]* @g_3936, i32 0, i64 2, i64 0), i32** %l_3935, align 8, !tbaa !5
  %326 = bitcast i32*** %l_3934 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %326) #1
  store i32** %l_3935, i32*** %l_3934, align 8, !tbaa !5
  %327 = bitcast i32** %l_3937 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %327) #1
  %328 = getelementptr inbounds [3 x i32], [3 x i32]* %l_3786, i32 0, i64 1
  store i32* %328, i32** %l_3937, align 8, !tbaa !5
  %329 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %329) #1
  %330 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %330) #1
  %331 = bitcast i32* %k12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %331) #1
  %332 = load i32, i32* %l_3899, align 4, !tbaa !1
  %333 = trunc i32 %332 to i16
  store i64 3360218027, i64* %l_3911, align 8, !tbaa !7
  %334 = load i16****, i16***** @g_3711, align 8, !tbaa !5
  %335 = load i16***, i16**** %334, align 8, !tbaa !5
  %336 = load i16**, i16*** %335, align 8, !tbaa !5
  %337 = load i16*, i16** %336, align 8, !tbaa !5
  %338 = load i16, i16* %337, align 2, !tbaa !10
  %339 = sext i16 %338 to i32
  %340 = load i16***, i16**** @g_3712, align 8, !tbaa !5
  %341 = load i16**, i16*** %340, align 8, !tbaa !5
  %342 = load i16*, i16** %341, align 8, !tbaa !5
  %343 = load i16, i16* %342, align 2, !tbaa !10
  %344 = sext i16 %343 to i32
  %345 = load i32*, i32** %l_3, align 8, !tbaa !5
  store i32 %344, i32* %345, align 4, !tbaa !1
  %346 = getelementptr inbounds [7 x [8 x [1 x %union.U0]]], [7 x [8 x [1 x %union.U0]]]* %l_3918, i32 0, i64 2
  %347 = getelementptr inbounds [8 x [1 x %union.U0]], [8 x [1 x %union.U0]]* %346, i32 0, i64 6
  %348 = getelementptr inbounds [1 x %union.U0], [1 x %union.U0]* %347, i32 0, i64 0
  %349 = getelementptr inbounds [4 x i32***], [4 x i32***]* %l_3921, i32 0, i64 2
  %350 = load i32***, i32**** %349, align 8, !tbaa !5
  %351 = load i32***, i32**** %l_3922, align 8, !tbaa !5
  %352 = icmp eq i32*** %350, %351
  %353 = zext i1 %352 to i32
  %354 = trunc i32 %353 to i8
  %355 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %354, i8 signext -32)
  %356 = load i64, i64* %l_3924, align 8, !tbaa !7
  %357 = load i8*, i8** @g_2958, align 8, !tbaa !5
  %358 = load volatile i8, i8* %357, align 1, !tbaa !9
  %359 = zext i8 %358 to i64
  %360 = icmp ule i64 %356, %359
  %361 = zext i1 %360 to i32
  br i1 false, label %365, label %362

; <label>:362                                     ; preds = %313
  %363 = load i32, i32* %l_3925, align 4, !tbaa !1
  %364 = icmp ne i32 %363, 0
  br label %365

; <label>:365                                     ; preds = %362, %313
  %366 = phi i1 [ true, %313 ], [ %364, %362 ]
  %367 = zext i1 %366 to i32
  %368 = load i16, i16* %l_3895, align 2, !tbaa !10
  %369 = zext i16 %368 to i32
  %370 = call i32 @safe_sub_func_int32_t_s_s(i32 %367, i32 %369)
  %371 = or i32 %344, %370
  %372 = icmp sge i32 %339, %371
  %373 = zext i1 %372 to i32
  %374 = load i32, i32* %l_1707, align 4, !tbaa !1
  %375 = and i32 %374, %373
  store i32 %375, i32* %l_1707, align 4, !tbaa !1
  %376 = load i8**, i8*** @g_2557, align 8, !tbaa !5
  %377 = load volatile i8*, i8** %376, align 8, !tbaa !5
  %378 = load i8, i8* %377, align 1, !tbaa !9
  %379 = sext i8 %378 to i32
  %380 = icmp sle i32 %375, %379
  %381 = zext i1 %380 to i32
  %382 = trunc i32 %381 to i16
  %383 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %382, i32 11)
  %384 = zext i16 %383 to i64
  %385 = and i64 1, %384
  %386 = xor i64 %385, 55
  %387 = icmp eq i64 3360218027, %386
  %388 = zext i1 %387 to i32
  %389 = load i32, i32* %l_3926, align 4, !tbaa !1
  %390 = and i32 %389, %388
  store i32 %390, i32* %l_3926, align 4, !tbaa !1
  %391 = trunc i32 %390 to i8
  %392 = load i8*, i8** @g_2558, align 8, !tbaa !5
  %393 = load i8, i8* %392, align 1, !tbaa !9
  %394 = sext i8 %393 to i32
  %395 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %391, i32 %394)
  %396 = load i32, i32* %l_3927, align 4, !tbaa !1
  %397 = getelementptr inbounds [3 x i32], [3 x i32]* %l_3786, i32 0, i64 2
  %398 = load i32, i32* %397, align 4, !tbaa !1
  %399 = and i32 %396, %398
  %400 = load i32, i32* %l_3928, align 4, !tbaa !1
  %401 = icmp sge i32 %399, %400
  %402 = zext i1 %401 to i32
  %403 = getelementptr inbounds [7 x [8 x [1 x %union.U0]]], [7 x [8 x [1 x %union.U0]]]* %l_3918, i32 0, i64 2
  %404 = getelementptr inbounds [8 x [1 x %union.U0]], [8 x [1 x %union.U0]]* %403, i32 0, i64 6
  %405 = getelementptr inbounds [1 x %union.U0], [1 x %union.U0]* %404, i32 0, i64 0
  %406 = bitcast %union.U0* %405 to i8*
  %407 = load i8, i8* %406, align 4
  %408 = and i8 %407, 3
  %409 = zext i8 %408 to i32
  %410 = call i32 @safe_add_func_int32_t_s_s(i32 %402, i32 %409)
  %411 = load i8*, i8** @g_3798, align 8, !tbaa !5
  %412 = load i8, i8* %411, align 1, !tbaa !9
  %413 = zext i8 %412 to i32
  %414 = xor i32 %413, %410
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %411, align 1, !tbaa !9
  %416 = getelementptr inbounds [5 x i8], [5 x i8]* %l_3868, i32 0, i64 4
  %417 = load i8, i8* %416, align 1, !tbaa !9
  %418 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %415, i8 zeroext %417)
  %419 = zext i8 %418 to i64
  %420 = or i64 %419, 1
  %421 = trunc i64 %420 to i16
  %422 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %421, i16 zeroext 0)
  %423 = zext i16 %422 to i32
  %424 = getelementptr inbounds [3 x i32], [3 x i32]* %l_3786, i32 0, i64 1
  store i32 %423, i32* %424, align 4, !tbaa !1
  %425 = sext i32 %423 to i64
  %426 = load i64*, i64** @g_1581, align 8, !tbaa !5
  %427 = load i64, i64* %426, align 8, !tbaa !7
  %428 = call i64 @safe_mod_func_uint64_t_u_u(i64 %425, i64 %427)
  %429 = load i32, i32* %l_3925, align 4, !tbaa !1
  %430 = trunc i32 %429 to i16
  %431 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %333, i16 zeroext %430)
  %432 = zext i16 %431 to i64
  %433 = xor i64 %432, 18600
  %434 = trunc i64 %433 to i32
  store i32 %434, i32* %l_3929, align 4, !tbaa !1
  %435 = load i32*, i32** %l_1708, align 8, !tbaa !5
  store i32 %434, i32* %435, align 4, !tbaa !1
  store i64 0, i64* @g_1860, align 8, !tbaa !7
  br label %436

; <label>:436                                     ; preds = %601, %365
  %437 = load i64, i64* @g_1860, align 8, !tbaa !7
  %438 = icmp ule i64 %437, 0
  br i1 %438, label %439, label %604

; <label>:439                                     ; preds = %436
  %440 = bitcast i32** %l_3930 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %440) #1
  store i32* %l_3928, i32** %l_3930, align 8, !tbaa !5
  %441 = bitcast i32**** %l_3932 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %441) #1
  store i32*** null, i32**** %l_3932, align 8, !tbaa !5
  %442 = bitcast [7 x i32***]* %l_3933 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %442) #1
  %443 = bitcast [7 x i32***]* %l_3933 to i8*
  call void @llvm.memset.p0i8.i64(i8* %443, i8 0, i64 56, i32 16, i1 false)
  %444 = bitcast i32* %l_3945 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %444) #1
  store i32 0, i32* %l_3945, align 4, !tbaa !1
  %445 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %445) #1
  %446 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %446) #1
  %447 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %447) #1
  %448 = load i32*, i32** %l_3930, align 8, !tbaa !5
  %449 = load i32**, i32*** @g_3337, align 8, !tbaa !5
  store i32* %448, i32** %449, align 8, !tbaa !5
  %450 = load i64, i64* @g_1860, align 8, !tbaa !7
  %451 = load i32, i32* @g_9, align 4, !tbaa !1
  %452 = add nsw i32 %451, 1
  %453 = sext i32 %452 to i64
  %454 = load i64, i64* @g_1860, align 8, !tbaa !7
  %455 = add i64 %454, 1
  %456 = getelementptr inbounds [5 x [2 x [1 x i32]]], [5 x [2 x [1 x i32]]]* @g_4, i32 0, i64 %455
  %457 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %456, i32 0, i64 %453
  %458 = getelementptr inbounds [1 x i32], [1 x i32]* %457, i32 0, i64 %450
  %459 = load i32, i32* %458, align 4, !tbaa !1
  %460 = load i8*, i8** @g_3798, align 8, !tbaa !5
  %461 = load i8, i8* %460, align 1, !tbaa !9
  %462 = load i32**, i32*** %l_3931, align 8, !tbaa !5
  store i32** %462, i32*** %l_3934, align 8, !tbaa !5
  store i32** %462, i32*** @g_1652, align 8, !tbaa !5
  %463 = call i32* @func_42(i32* %448, i32 %459, i8 zeroext %461, i32** %462)
  %464 = load i32**, i32*** @g_3337, align 8, !tbaa !5
  store i32* %463, i32** %464, align 8, !tbaa !5
  store i32 0, i32* @g_366, align 4, !tbaa !1
  br label %465

; <label>:465                                     ; preds = %590, %439
  %466 = load i32, i32* @g_366, align 4, !tbaa !1
  %467 = icmp ule i32 %466, 0
  br i1 %467, label %468, label %593

; <label>:468                                     ; preds = %465
  call void @llvm.lifetime.start(i64 1, i8* %l_3957) #1
  store i8 -4, i8* %l_3957, align 1, !tbaa !9
  %469 = bitcast i32* %l_3959 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %469) #1
  store i32 -1618419557, i32* %l_3959, align 4, !tbaa !1
  %470 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %470) #1
  %471 = bitcast i32* %j17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %471) #1
  %472 = bitcast i32* %k18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %472) #1
  %473 = load i32*, i32** %l_3937, align 8, !tbaa !5
  %474 = load i32**, i32*** @g_3337, align 8, !tbaa !5
  store i32* %473, i32** %474, align 8, !tbaa !5
  %475 = load i32, i32* %l_3945, align 4, !tbaa !1
  %476 = load i32, i32* %l_3954, align 4, !tbaa !1
  %477 = trunc i32 %476 to i16
  %478 = load i8*, i8** @g_931, align 8, !tbaa !5
  %479 = load i8, i8* %478, align 1, !tbaa !9
  %480 = zext i8 %479 to i32
  %481 = load i8*, i8** @g_2958, align 8, !tbaa !5
  %482 = load volatile i8, i8* %481, align 1, !tbaa !9
  %483 = zext i8 %482 to i32
  %484 = load i8*, i8** @g_3798, align 8, !tbaa !5
  %485 = load i8, i8* %484, align 1, !tbaa !9
  %486 = zext i8 %485 to i32
  %487 = icmp sgt i32 %483, %486
  %488 = zext i1 %487 to i32
  %489 = load i32*, i32** %l_1708, align 8, !tbaa !5
  %490 = load i32, i32* %489, align 4, !tbaa !1
  %491 = sext i32 %490 to i64
  %492 = icmp sgt i64 %491, 1
  %493 = zext i1 %492 to i32
  %494 = trunc i32 %493 to i8
  %495 = load i8, i8* %l_3957, align 1, !tbaa !9
  %496 = sext i8 %495 to i32
  %497 = load i32*, i32** %l_1708, align 8, !tbaa !5
  %498 = load i32, i32* %497, align 4, !tbaa !1
  %499 = icmp slt i32 %496, %498
  %500 = zext i1 %499 to i32
  %501 = trunc i32 %500 to i8
  %502 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %494, i8 signext %501)
  %503 = sext i8 %502 to i32
  %504 = or i32 %488, %503
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %513, label %506

; <label>:506                                     ; preds = %468
  %507 = getelementptr inbounds [5 x [10 x [5 x i16]]], [5 x [10 x [5 x i16]]]* %l_3958, i32 0, i64 4
  %508 = getelementptr inbounds [10 x [5 x i16]], [10 x [5 x i16]]* %507, i32 0, i64 0
  %509 = getelementptr inbounds [5 x i16], [5 x i16]* %508, i32 0, i64 4
  %510 = load i16, i16* %509, align 2, !tbaa !10
  %511 = sext i16 %510 to i32
  %512 = icmp ne i32 %511, 0
  br label %513

; <label>:513                                     ; preds = %506, %468
  %514 = phi i1 [ true, %468 ], [ %512, %506 ]
  %515 = zext i1 %514 to i32
  %516 = icmp sge i32 %480, %515
  %517 = zext i1 %516 to i32
  %518 = sext i32 %517 to i64
  %519 = icmp sgt i64 %518, 241
  %520 = zext i1 %519 to i32
  %521 = load i32*****, i32****** %l_3889, align 8, !tbaa !5
  %522 = load i32****, i32***** %521, align 8, !tbaa !5
  %523 = load i32*****, i32****** %l_3889, align 8, !tbaa !5
  %524 = load i32****, i32***** %523, align 8, !tbaa !5
  %525 = icmp ne i32**** %522, %524
  %526 = zext i1 %525 to i32
  %527 = trunc i32 %526 to i16
  %528 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %477, i16 zeroext %527)
  %529 = zext i16 %528 to i64
  %530 = load i64**, i64*** @g_1580, align 8, !tbaa !5
  %531 = load i64*, i64** %530, align 8, !tbaa !5
  %532 = load i64, i64* %531, align 8, !tbaa !7
  %533 = call i64 @safe_mod_func_int64_t_s_s(i64 %529, i64 %532)
  %534 = load i32**, i32*** %l_3931, align 8, !tbaa !5
  %535 = load i32*, i32** %534, align 8, !tbaa !5
  %536 = load i32, i32* %535, align 4, !tbaa !1
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %544, label %538

; <label>:538                                     ; preds = %513
  %539 = load i16**, i16*** @g_2815, align 8, !tbaa !5
  %540 = load i16*, i16** %539, align 8, !tbaa !5
  %541 = load i16, i16* %540, align 2, !tbaa !10
  %542 = sext i16 %541 to i32
  %543 = icmp ne i32 %542, 0
  br label %544

; <label>:544                                     ; preds = %538, %513
  %545 = phi i1 [ true, %513 ], [ %543, %538 ]
  %546 = zext i1 %545 to i32
  %547 = trunc i32 %546 to i8
  %548 = load i8**, i8*** @g_2557, align 8, !tbaa !5
  %549 = load volatile i8*, i8** %548, align 8, !tbaa !5
  store i8 %547, i8* %549, align 1, !tbaa !9
  %550 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %547, i32 4)
  %551 = sext i8 %550 to i32
  %552 = load i32*, i32** @g_52, align 8, !tbaa !5
  %553 = load i32, i32* %552, align 4, !tbaa !1
  %554 = icmp slt i32 %551, %553
  %555 = zext i1 %554 to i32
  %556 = trunc i32 %555 to i8
  %557 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %556, i32 7)
  %558 = sext i8 %557 to i32
  %559 = load i32*, i32** %l_3930, align 8, !tbaa !5
  store i32 %558, i32* %559, align 4, !tbaa !1
  %560 = or i32 %475, %558
  %561 = trunc i32 %560 to i16
  %562 = load i16*, i16** @g_209, align 8, !tbaa !5
  %563 = load i16, i16* %562, align 2, !tbaa !10
  %564 = zext i16 %563 to i32
  %565 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %561, i32 %564)
  %566 = trunc i16 %565 to i8
  %567 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %566, i8 zeroext 8)
  %568 = zext i8 %567 to i16
  %569 = load i32, i32* %l_3959, align 4, !tbaa !1
  %570 = trunc i32 %569 to i16
  %571 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %568, i16 zeroext %570)
  %572 = zext i16 %571 to i32
  %573 = xor i32 %572, -1
  %574 = load i32, i32* @g_366, align 4, !tbaa !1
  %575 = zext i32 %574 to i64
  %576 = load i64, i64* @g_1860, align 8, !tbaa !7
  %577 = load i32, i32* @g_9, align 4, !tbaa !1
  %578 = add nsw i32 %577, 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds [5 x [2 x [1 x i32]]], [5 x [2 x [1 x i32]]]* @g_4, i32 0, i64 %579
  %581 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %580, i32 0, i64 %576
  %582 = getelementptr inbounds [1 x i32], [1 x i32]* %581, i32 0, i64 %575
  store i32 %573, i32* %582, align 4, !tbaa !1
  %583 = load i32*, i32** %l_3937, align 8, !tbaa !5
  %584 = load i32, i32* %583, align 4, !tbaa !1
  %585 = load i32*, i32** %l_3, align 8, !tbaa !5
  store i32 %584, i32* %585, align 4, !tbaa !1
  %586 = bitcast i32* %k18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %586) #1
  %587 = bitcast i32* %j17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %587) #1
  %588 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %588) #1
  %589 = bitcast i32* %l_3959 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %589) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3957) #1
  br label %590

; <label>:590                                     ; preds = %544
  %591 = load i32, i32* @g_366, align 4, !tbaa !1
  %592 = add i32 %591, 1
  store i32 %592, i32* @g_366, align 4, !tbaa !1
  br label %465

; <label>:593                                     ; preds = %465
  %594 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %594) #1
  %595 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %595) #1
  %596 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %596) #1
  %597 = bitcast i32* %l_3945 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %597) #1
  %598 = bitcast [7 x i32***]* %l_3933 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %598) #1
  %599 = bitcast i32**** %l_3932 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %599) #1
  %600 = bitcast i32** %l_3930 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %600) #1
  br label %601

; <label>:601                                     ; preds = %593
  %602 = load i64, i64* @g_1860, align 8, !tbaa !7
  %603 = add i64 %602, 1
  store i64 %603, i64* @g_1860, align 8, !tbaa !7
  br label %436

; <label>:604                                     ; preds = %436
  %605 = bitcast i32* %k12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %605) #1
  %606 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %606) #1
  %607 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %607) #1
  %608 = bitcast i32** %l_3937 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %608) #1
  %609 = bitcast i32*** %l_3934 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %609) #1
  %610 = bitcast i32** %l_3935 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %610) #1
  %611 = bitcast i32* %l_3929 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %611) #1
  %612 = bitcast i32* %l_3926 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %612) #1
  %613 = bitcast [7 x [8 x [1 x %union.U0]]]* %l_3918 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %613) #1
  %614 = bitcast [5 x [6 x i16*]]* %l_3915 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %614) #1
  %615 = bitcast i16** %l_3914 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %615) #1
  %616 = bitcast i64* %l_3911 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %616) #1
  %617 = bitcast [1 x [8 x i32*]]* %l_3910 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %617) #1
  %618 = bitcast i32* %l_3899 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %618) #1
  br label %619

; <label>:619                                     ; preds = %604, %312
  store i32 0, i32* %1
  br label %620

; <label>:620                                     ; preds = %619, %308
  %621 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %621) #1
  %622 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %622) #1
  %623 = bitcast i32* %l_3928 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %623) #1
  %624 = bitcast i32* %l_3925 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %624) #1
  %625 = bitcast i32**** %l_3922 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %625) #1
  %626 = bitcast i32*** %l_3923 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %626) #1
  %627 = bitcast [4 x i32***]* %l_3921 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %627) #1
  %628 = bitcast i16* %l_3895 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %628) #1
  %629 = bitcast [5 x [1 x i64]]* %l_3873 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %629) #1
  %630 = bitcast i32* %l_3871 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %630) #1
  %631 = bitcast [5 x i8]* %l_3868 to i8*
  call void @llvm.lifetime.end(i64 5, i8* %631) #1
  %632 = bitcast i64* %l_3867 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %632) #1
  %633 = bitcast i16* %l_3837 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %633) #1
  %634 = bitcast [2 x i8**]* %l_3803 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %634) #1
  %635 = bitcast [3 x i32]* %l_3786 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %635) #1
  %636 = bitcast i32* %l_1707 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %636) #1
  %637 = bitcast i32** %l_1702 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %637) #1
  %cleanup.dest.19 = load i32, i32* %1
  switch i32 %cleanup.dest.19, label %771 [
    i32 0, label %638
    i32 15, label %642
  ]

; <label>:638                                     ; preds = %620
  br label %639

; <label>:639                                     ; preds = %638
  %640 = load i32, i32* @g_9, align 4, !tbaa !1
  %641 = sub nsw i32 %640, 1
  store i32 %641, i32* @g_9, align 4, !tbaa !1
  br label %82

; <label>:642                                     ; preds = %620, %82
  store i8 0, i8* @g_100, align 1, !tbaa !9
  br label %643

; <label>:643                                     ; preds = %732, %642
  %644 = load i8, i8* @g_100, align 1, !tbaa !9
  %645 = sext i8 %644 to i32
  %646 = icmp ne i32 %645, -16
  br i1 %646, label %647, label %735

; <label>:647                                     ; preds = %643
  %648 = bitcast i8** %l_3970 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %648) #1
  store i8* %l_3892, i8** %l_3970, align 8, !tbaa !5
  %649 = bitcast i32* %l_3972 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %649) #1
  store i32 -13298264, i32* %l_3972, align 4, !tbaa !1
  %650 = load i32**, i32*** @g_51, align 8, !tbaa !5
  store i32* %l_3927, i32** %650, align 8, !tbaa !5
  %651 = load i32**, i32*** @g_2242, align 8, !tbaa !5
  %652 = load i32*, i32** %651, align 8, !tbaa !5
  %653 = load volatile i32, i32* %652, align 4, !tbaa !1
  %654 = load i32*, i32** %l_3, align 8, !tbaa !5
  %655 = load i32, i32* %654, align 4, !tbaa !1
  %656 = load i64, i64* %l_3966, align 8, !tbaa !7
  %657 = trunc i64 %656 to i8
  %658 = load i32*, i32** %l_1708, align 8, !tbaa !5
  %659 = load i32, i32* %658, align 4, !tbaa !1
  %660 = icmp ne i32 %659, 0
  %661 = xor i1 %660, true
  %662 = zext i1 %661 to i32
  %663 = load i8*, i8** %l_3970, align 8, !tbaa !5
  %664 = load i8, i8* %663, align 1, !tbaa !9
  %665 = sext i8 %664 to i32
  %666 = and i32 %665, %662
  %667 = trunc i32 %666 to i8
  store i8 %667, i8* %663, align 1, !tbaa !9
  %668 = sext i8 %667 to i32
  %669 = load i64****, i64***** @g_2098, align 8, !tbaa !5
  %670 = load i64***, i64**** %669, align 8, !tbaa !5
  %671 = load i64**, i64*** %670, align 8, !tbaa !5
  %672 = load i64*, i64** %671, align 8, !tbaa !5
  %673 = load i64, i64* %672, align 8, !tbaa !7
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %675, label %686

; <label>:675                                     ; preds = %647
  %676 = load %union.U0**, %union.U0*** @g_3742, align 8, !tbaa !5
  %677 = load %union.U0*, %union.U0** %676, align 8, !tbaa !5
  %678 = load i32*, i32** %l_3971, align 8, !tbaa !5
  %679 = icmp eq i32* %l_3954, %678
  %680 = zext i1 %679 to i32
  %681 = trunc i32 %680 to i16
  %682 = load i16*, i16** @g_209, align 8, !tbaa !5
  store i16 %681, i16* %682, align 2, !tbaa !10
  %683 = zext i16 %681 to i64
  %684 = or i64 %683, 40982
  %685 = icmp ne i64 %684, 0
  br label %686

; <label>:686                                     ; preds = %675, %647
  %687 = phi i1 [ false, %647 ], [ %685, %675 ]
  %688 = zext i1 %687 to i32
  %689 = icmp eq i32 %668, %688
  %690 = zext i1 %689 to i32
  %691 = trunc i32 %690 to i8
  %692 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %691, i8 zeroext -2)
  %693 = zext i8 %692 to i32
  %694 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %657, i32 %693)
  %695 = sext i8 %694 to i16
  %696 = load i16**, i16*** @g_2815, align 8, !tbaa !5
  %697 = load i16*, i16** %696, align 8, !tbaa !5
  store i16 %695, i16* %697, align 2, !tbaa !10
  %698 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %695, i32 7)
  %699 = sext i16 %698 to i32
  %700 = icmp slt i32 %655, %699
  %701 = zext i1 %700 to i32
  %702 = sext i32 %701 to i64
  %703 = icmp eq i64 %702, 1384686938
  %704 = zext i1 %703 to i32
  %705 = sext i32 %704 to i64
  %706 = icmp eq i64 -1, %705
  %707 = zext i1 %706 to i32
  %708 = trunc i32 %707 to i8
  %709 = load i32**, i32*** %l_3931, align 8, !tbaa !5
  %710 = call i32* @func_42(i32* %l_3927, i32 %653, i8 zeroext %708, i32** %709)
  %711 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_3674, i32 0, i64 3), align 8, !tbaa !7
  %712 = trunc i64 %711 to i32
  %713 = load i8**, i8*** @g_3797, align 8, !tbaa !5
  %714 = load i8*, i8** %713, align 8, !tbaa !5
  %715 = load i8, i8* %714, align 1, !tbaa !9
  %716 = call i32* @func_42(i32* %710, i32 %712, i8 zeroext %715, i32** @g_3084)
  %717 = load i32, i32* %l_3972, align 4, !tbaa !1
  %718 = load i8**, i8*** @g_3797, align 8, !tbaa !5
  %719 = load i8*, i8** %718, align 8, !tbaa !5
  %720 = load i8, i8* %719, align 1, !tbaa !9
  %721 = load i32**, i32*** %l_3931, align 8, !tbaa !5
  %722 = call i32* @func_42(i32* %716, i32 %717, i8 zeroext %720, i32** %721)
  %723 = load i32**, i32*** @g_51, align 8, !tbaa !5
  store i32* %722, i32** %723, align 8, !tbaa !5
  %724 = load i8, i8* @g_100, align 1, !tbaa !9
  %725 = icmp ne i8 %724, 0
  br i1 %725, label %726, label %727

; <label>:726                                     ; preds = %686
  store i32 2, i32* %1
  br label %728

; <label>:727                                     ; preds = %686
  store i32 0, i32* %1
  br label %728

; <label>:728                                     ; preds = %727, %726
  %729 = bitcast i32* %l_3972 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %729) #1
  %730 = bitcast i8** %l_3970 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %730) #1
  %cleanup.dest.20 = load i32, i32* %1
  switch i32 %cleanup.dest.20, label %736 [
    i32 0, label %731
  ]

; <label>:731                                     ; preds = %728
  br label %732

; <label>:732                                     ; preds = %731
  %733 = load i8, i8* @g_100, align 1, !tbaa !9
  %734 = add i8 %733, -1
  store i8 %734, i8* @g_100, align 1, !tbaa !9
  br label %643

; <label>:735                                     ; preds = %643
  store i32 0, i32* %1
  br label %736

; <label>:736                                     ; preds = %735, %728, %80
  %737 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %737) #1
  %738 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %738) #1
  %739 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %739) #1
  %740 = bitcast i32** %l_3971 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %740) #1
  %741 = bitcast [5 x [10 x [5 x i16]]]* %l_3958 to i8*
  call void @llvm.lifetime.end(i64 500, i8* %741) #1
  %742 = bitcast i32*** %l_3931 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %742) #1
  %743 = bitcast i64* %l_3924 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %743) #1
  %744 = bitcast [2 x [5 x i32]]* %l_3896 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %744) #1
  %745 = bitcast i32****** %l_3889 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %745) #1
  %746 = bitcast [10 x i32****]* %l_3890 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %746) #1
  %747 = bitcast i64*** %l_3885 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %747) #1
  %748 = bitcast i32* %l_3820 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %748) #1
  %749 = bitcast i8*** %l_3795 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %749) #1
  %750 = bitcast %union.U0** %l_3787 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %750) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1705) #1
  %cleanup.dest.21 = load i32, i32* %1
  switch i32 %cleanup.dest.21, label %771 [
    i32 0, label %751
    i32 5, label %752
    i32 2, label %17
  ]

; <label>:751                                     ; preds = %736
  br label %752

; <label>:752                                     ; preds = %751, %736
  %753 = load i32, i32* %l_2, align 4, !tbaa !1
  %754 = add nsw i32 %753, 1
  store i32 %754, i32* %l_2, align 4, !tbaa !1
  br label %22

; <label>:755                                     ; preds = %22
  %756 = load i32, i32* %l_3974, align 4, !tbaa !1
  store i32 1, i32* %1
  %757 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %757) #1
  %758 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %758) #1
  %759 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %759) #1
  %760 = bitcast i32* %l_3974 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %760) #1
  %761 = bitcast i64* %l_3966 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %761) #1
  %762 = bitcast i32* %l_3954 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %762) #1
  %763 = bitcast i32* %l_3927 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %763) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3893) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3892) #1
  %764 = bitcast i16* %l_3891 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %764) #1
  %765 = bitcast i32** %l_3808 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %765) #1
  %766 = bitcast [3 x [10 x [8 x i8**]]]* %l_3794 to i8*
  call void @llvm.lifetime.end(i64 1920, i8* %766) #1
  %767 = bitcast i32** %l_1708 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %767) #1
  %768 = bitcast i32** %l_1704 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %768) #1
  %769 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %769) #1
  %770 = bitcast i32* %l_2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %770) #1
  ret i32 %756

; <label>:771                                     ; preds = %736, %620
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.68, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32* @func_42(i32* %p_43, i32 %p_44, i8 zeroext %p_45, i32** %p_46) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32**, align 8
  %l_212 = alloca [8 x i16], align 16
  %i = alloca i32, align 4
  store i32* %p_43, i32** %1, align 8, !tbaa !5
  store i32 %p_44, i32* %2, align 4, !tbaa !1
  store i8 %p_45, i8* %3, align 1, !tbaa !9
  store i32** %p_46, i32*** %4, align 8, !tbaa !5
  %5 = bitcast [8 x i16]* %l_212 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast [8 x i16]* %l_212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([8 x i16]* @func_42.l_212 to i8*), i64 16, i32 16, i1 false)
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32**, i32*** %4, align 8, !tbaa !5
  %9 = load i32*, i32** %8, align 8, !tbaa !5
  %10 = load i32, i32* %9, align 4, !tbaa !1
  store i32 %10, i32* %9, align 4, !tbaa !1
  %11 = getelementptr inbounds [8 x i16], [8 x i16]* %l_212, i32 0, i64 0
  %12 = load i16, i16* %11, align 2, !tbaa !10
  %13 = sext i16 %12 to i32
  %14 = load i32*, i32** @g_132, align 8, !tbaa !5
  %15 = load volatile i32, i32* %14, align 4, !tbaa !1
  %16 = and i32 %15, %13
  store volatile i32 %16, i32* %14, align 4, !tbaa !1
  %17 = load i32*, i32** %1, align 8, !tbaa !5
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast [8 x i16]* %l_212 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #1
  ret i32* %17
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
