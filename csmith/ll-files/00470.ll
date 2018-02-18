; ModuleID = '00470.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { i64, i24 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global [10 x i32] [i32 0, i32 -694205816, i32 -1, i32 -1, i32 -694205816, i32 0, i32 -694205816, i32 -1, i32 -1, i32 -694205816], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"g_2[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_24 = internal global i32 -1856963861, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_24\00", align 1
@g_42 = internal global i8 38, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"g_42\00", align 1
@g_58 = internal global i16 -1, align 2
@.str.5 = private unnamed_addr constant [5 x i8] c"g_58\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"g_73.f0\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"g_73.f1\00", align 1
@g_114 = internal global [9 x i64] [i64 8109180330902981632, i64 8109180330902981632, i64 8109180330902981632, i64 8109180330902981632, i64 8109180330902981632, i64 8109180330902981632, i64 8109180330902981632, i64 8109180330902981632, i64 8109180330902981632], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"g_114[i]\00", align 1
@g_125 = internal global i16 -1609, align 2
@.str.9 = private unnamed_addr constant [6 x i8] c"g_125\00", align 1
@g_143 = internal global i16 5, align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"g_143\00", align 1
@g_145 = internal global i8 -65, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"g_145\00", align 1
@g_159 = internal global [10 x i32] [i32 361268422, i32 361268422, i32 -1, i32 361268422, i32 361268422, i32 -1, i32 361268422, i32 361268422, i32 -1, i32 361268422], align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"g_159[i]\00", align 1
@g_161 = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_161\00", align 1
@g_162 = internal global [5 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1], align 16
@.str.14 = private unnamed_addr constant [9 x i8] c"g_162[i]\00", align 1
@g_178 = internal global i8 8, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_178\00", align 1
@g_206 = internal global i8 0, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_206\00", align 1
@g_239 = internal global i32 -3, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_239\00", align 1
@g_319 = internal global i32 3, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_319\00", align 1
@g_337 = internal global i8 -117, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_337\00", align 1
@g_380 = internal global i8 5, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_380\00", align 1
@g_381 = internal global i16 4, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_381\00", align 1
@g_386 = internal global i16 12660, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_386\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"g_433.f0\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"g_433.f1\00", align 1
@g_524 = internal global i64 1454093950074999489, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_524\00", align 1
@g_542 = internal global i8 0, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_542\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_637\00", align 1
@g_673 = internal global i32 -1, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_673\00", align 1
@g_683 = internal global i64 8, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_683\00", align 1
@g_743 = internal global i16 -4150, align 2
@.str.30 = private unnamed_addr constant [6 x i8] c"g_743\00", align 1
@g_745 = internal global [8 x i32] [i32 1641701275, i32 7, i32 1641701275, i32 7, i32 1641701275, i32 7, i32 1641701275, i32 7], align 16
@.str.31 = private unnamed_addr constant [9 x i8] c"g_745[i]\00", align 1
@g_866 = internal global i8 0, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_866\00", align 1
@g_899 = internal global i32 0, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_899\00", align 1
@g_986 = internal global i32 -1, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_986\00", align 1
@g_1019 = internal global i32 -146472075, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1019\00", align 1
@g_1071 = internal global [6 x [9 x i32]] [[9 x i32] [i32 -1403827723, i32 257256666, i32 -2076023165, i32 -1403827723, i32 -1403827723, i32 -2076023165, i32 257256666, i32 -1403827723, i32 -313887212], [9 x i32] [i32 -1, i32 0, i32 -849376443, i32 0, i32 -1, i32 -27676450, i32 -1, i32 0, i32 -1], [9 x i32] [i32 1076067780, i32 1076067780, i32 257256666, i32 0, i32 1076067780, i32 -1403827723, i32 0, i32 0, i32 -1403827723], [9 x i32] [i32 1742701895, i32 970254226, i32 1137958663, i32 970254226, i32 1742701895, i32 0, i32 1742701895, i32 970254226, i32 1137958663], [9 x i32] [i32 1076067780, i32 0, i32 257256666, i32 1076067780, i32 1076067780, i32 257256666, i32 0, i32 1076067780, i32 -1403827723], [9 x i32] [i32 -94922005, i32 970254226, i32 -1, i32 970254226, i32 -94922005, i32 0, i32 -94922005, i32 970254226, i32 -1]], align 16
@.str.36 = private unnamed_addr constant [13 x i8] c"g_1071[i][j]\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_1313 = internal global i8 -33, align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1313\00", align 1
@g_1442 = internal global i8 1, align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1442\00", align 1
@g_1628 = internal global i64 105429567775976555, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1628\00", align 1
@g_1659 = internal global i64 -6748053030023853321, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1659\00", align 1
@g_1702 = internal global i32 1019652018, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1702\00", align 1
@g_1704 = internal global i32 7, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1704\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"g_1737[i].f0\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"g_1737[i].f1\00", align 1
@g_1756 = internal global [1 x i32] [i32 1], align 4
@.str.46 = private unnamed_addr constant [10 x i8] c"g_1756[i]\00", align 1
@g_1790 = internal global i64 1, align 8
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1790\00", align 1
@g_1831 = internal constant [4 x i16] zeroinitializer, align 2
@.str.48 = private unnamed_addr constant [10 x i8] c"g_1831[i]\00", align 1
@g_1854 = internal global i64 -1, align 8
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1854\00", align 1
@g_1895 = internal global i32 -354613872, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1895\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2188\00", align 1
@g_2463 = internal global i8 1, align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"g_2463\00", align 1
@g_2581 = internal global i32 1860514003, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"g_2581\00", align 1
@g_2586 = internal global [10 x [8 x [3 x i32]]] [[8 x [3 x i32]] [[3 x i32] [i32 1717217969, i32 -454952149, i32 8], [3 x i32] [i32 0, i32 170279128, i32 -1628560215], [3 x i32] [i32 -1, i32 1, i32 -1628560215], [3 x i32] [i32 1778373846, i32 1872509584, i32 8], [3 x i32] [i32 1825191502, i32 2073168952, i32 -1217868458], [3 x i32] [i32 -1279716643, i32 1570489911, i32 760832271], [3 x i32] [i32 -1578949830, i32 1717217969, i32 8], [3 x i32] [i32 1, i32 -2037607313, i32 760832271]], [8 x [3 x i32]] [[3 x i32] [i32 0, i32 2062583787, i32 -1217868458], [3 x i32] [i32 8, i32 -2018628258, i32 8], [3 x i32] [i32 2062583787, i32 -1, i32 -1628560215], [3 x i32] [i32 170279128, i32 -91014284, i32 -1628560215], [3 x i32] [i32 1872509584, i32 1778373846, i32 8], [3 x i32] [i32 2145436176, i32 -2012982702, i32 -1217868458], [3 x i32] [i32 -2037607313, i32 2145436176, i32 760832271], [3 x i32] [i32 -2018628258, i32 -1874266450, i32 8]], [8 x [3 x i32]] [[3 x i32] [i32 8, i32 -1279716643, i32 760832271], [3 x i32] [i32 -2012982702, i32 0, i32 -1217868458], [3 x i32] [i32 -1874266450, i32 -1578949830, i32 8], [3 x i32] [i32 -4, i32 -461480737, i32 -1628560215], [3 x i32] [i32 -461480737, i32 8, i32 -1628560215], [3 x i32] [i32 1715149720, i32 1715149720, i32 8], [3 x i32] [i32 1570489911, i32 0, i32 -1217868458], [3 x i32] [i32 -1, i32 1825191502, i32 760832271]], [8 x [3 x i32]] [[3 x i32] [i32 -454952149, i32 8, i32 8], [3 x i32] [i32 -91014284, i32 -1, i32 760832271], [3 x i32] [i32 2073168952, i32 -4, i32 -1217868458], [3 x i32] [i32 1717217969, i32 -454952149, i32 8], [3 x i32] [i32 0, i32 170279128, i32 -1628560215], [3 x i32] [i32 -1, i32 1, i32 -1628560215], [3 x i32] [i32 1778373846, i32 1872509584, i32 8], [3 x i32] [i32 1825191502, i32 2073168952, i32 -1217868458]], [8 x [3 x i32]] [[3 x i32] [i32 -1279716643, i32 1570489911, i32 760832271], [3 x i32] [i32 -1578949830, i32 1717217969, i32 8], [3 x i32] [i32 1, i32 -2037607313, i32 760832271], [3 x i32] [i32 0, i32 2062583787, i32 -1217868458], [3 x i32] [i32 8, i32 -2018628258, i32 8], [3 x i32] [i32 2062583787, i32 -1, i32 -1628560215], [3 x i32] [i32 170279128, i32 -91014284, i32 -1628560215], [3 x i32] [i32 1872509584, i32 1778373846, i32 8]], [8 x [3 x i32]] [[3 x i32] [i32 2145436176, i32 -2012982702, i32 -1217868458], [3 x i32] [i32 -2037607313, i32 1139976912, i32 -454952149], [3 x i32] [i32 -1641155183, i32 -1080034698, i32 -1874266450], [3 x i32] [i32 803455612, i32 784081205, i32 -454952149], [3 x i32] [i32 4, i32 -1662197940, i32 -2018628258], [3 x i32] [i32 -1080034698, i32 -1, i32 -1874266450], [3 x i32] [i32 1, i32 1, i32 -1578949830], [3 x i32] [i32 1, i32 803455612, i32 -1578949830]], [8 x [3 x i32]] [[3 x i32] [i32 1, i32 1, i32 -1874266450], [3 x i32] [i32 6, i32 1, i32 -2018628258], [3 x i32] [i32 804459581, i32 -1, i32 -454952149], [3 x i32] [i32 4, i32 -1, i32 -1874266450], [3 x i32] [i32 -3, i32 804459581, i32 -454952149], [3 x i32] [i32 1, i32 1, i32 -2018628258], [3 x i32] [i32 1, i32 4, i32 -1874266450], [3 x i32] [i32 -1662197940, i32 -679612513, i32 -1578949830]], [8 x [3 x i32]] [[3 x i32] [i32 -1096779205, i32 6, i32 -1578949830], [3 x i32] [i32 -1, i32 -802666255, i32 -1874266450], [3 x i32] [i32 -1, i32 1, i32 -2018628258], [3 x i32] [i32 784081205, i32 6, i32 -454952149], [3 x i32] [i32 -1, i32 1, i32 -1874266450], [3 x i32] [i32 6, i32 1320799993, i32 -454952149], [3 x i32] [i32 1, i32 6, i32 -2018628258], [3 x i32] [i32 -1, i32 -1641155183, i32 -1874266450]], [8 x [3 x i32]] [[3 x i32] [i32 6, i32 -1096779205, i32 -1578949830], [3 x i32] [i32 -679612513, i32 -3, i32 -1578949830], [3 x i32] [i32 -802666255, i32 -1, i32 -1874266450], [3 x i32] [i32 1139976912, i32 4, i32 -2018628258], [3 x i32] [i32 1320799993, i32 1139976912, i32 -454952149], [3 x i32] [i32 -1641155183, i32 -1080034698, i32 -1874266450], [3 x i32] [i32 803455612, i32 784081205, i32 -454952149], [3 x i32] [i32 4, i32 -1662197940, i32 -2018628258]], [8 x [3 x i32]] [[3 x i32] [i32 -1080034698, i32 -1, i32 -1874266450], [3 x i32] [i32 1, i32 1, i32 -1578949830], [3 x i32] [i32 1, i32 803455612, i32 -1578949830], [3 x i32] [i32 1, i32 1, i32 -1874266450], [3 x i32] [i32 6, i32 1, i32 -2018628258], [3 x i32] [i32 804459581, i32 -1, i32 -454952149], [3 x i32] [i32 4, i32 -1, i32 -1874266450], [3 x i32] [i32 -3, i32 804459581, i32 -454952149]]], align 16
@.str.54 = private unnamed_addr constant [16 x i8] c"g_2586[i][j][k]\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_2593 = internal global i32 1, align 4
@.str.56 = private unnamed_addr constant [7 x i8] c"g_2593\00", align 1
@g_2746 = internal global i32 1, align 4
@.str.57 = private unnamed_addr constant [7 x i8] c"g_2746\00", align 1
@g_2796 = internal constant i64 -4944672848927140507, align 8
@.str.58 = private unnamed_addr constant [7 x i8] c"g_2796\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"g_2871.f0\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"g_2871.f1\00", align 1
@g_2965 = internal global i16 -9, align 2
@.str.61 = private unnamed_addr constant [7 x i8] c"g_2965\00", align 1
@g_3053 = internal global [5 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1], align 16
@.str.62 = private unnamed_addr constant [10 x i8] c"g_3053[i]\00", align 1
@g_3149 = internal constant [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.63 = private unnamed_addr constant [10 x i8] c"g_3149[i]\00", align 1
@g_3427 = internal global i32 6, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"g_3427\00", align 1
@g_3495 = internal global i64 577729609066466559, align 8
@.str.65 = private unnamed_addr constant [7 x i8] c"g_3495\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"g_3534\00", align 1
@g_3628 = internal global i32 -936185696, align 4
@.str.67 = private unnamed_addr constant [7 x i8] c"g_3628\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_13 = private unnamed_addr constant { i64, i8, i8, i8 } { i64 -9179179333633013242, i8 66, i8 2, i8 0 }, align 8
@func_1.l_3305 = private unnamed_addr constant [10 x [3 x [1 x i32]]] [[3 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] [i32 -543393605], [1 x i32] zeroinitializer], [3 x [1 x i32]] [[1 x i32] [i32 -543393605], [1 x i32] [i32 7], [1 x i32] [i32 7]], [3 x [1 x i32]] [[1 x i32] [i32 -543393605], [1 x i32] zeroinitializer, [1 x i32] [i32 -543393605]], [3 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] [i32 7], [1 x i32] [i32 -543393605]], [3 x [1 x i32]] [[1 x i32] zeroinitializer, [1 x i32] [i32 -543393605], [1 x i32] [i32 7]], [3 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] [i32 -543393605], [1 x i32] zeroinitializer], [3 x [1 x i32]] [[1 x i32] [i32 -543393605], [1 x i32] [i32 7], [1 x i32] [i32 7]], [3 x [1 x i32]] [[1 x i32] [i32 -543393605], [1 x i32] zeroinitializer, [1 x i32] [i32 -543393605]], [3 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] [i32 7], [1 x i32] [i32 -543393605]], [3 x [1 x i32]] [[1 x i32] zeroinitializer, [1 x i32] [i32 -543393605], [1 x i32] [i32 7]]], align 16
@g_1936 = internal global i64** @g_1937, align 8
@func_1.l_3579 = private unnamed_addr constant [10 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@g_1001 = internal global [1 x [5 x i32*]] [[5 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_159 to i8*), i64 36) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_159 to i8*), i64 36) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_159 to i8*), i64 36) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_159 to i8*), i64 36) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_159 to i8*), i64 36) to i32*)]], align 16
@g_1810 = internal global [10 x i64*] [i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0), i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0), i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0), i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0), i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0), i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0), i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0), i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0), i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0), i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0)], align 16
@func_1.l_3316 = private unnamed_addr constant [10 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 8) to i32**)], align 16
@g_1852 = internal global i64** @g_1853, align 8
@g_212 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_2 to i8*), i64 32) to i32*), align 8
@g_3025 = internal global i8*** @g_3026, align 8
@g_3024 = internal global i8**** @g_3025, align 8
@g_1853 = internal constant i64* @g_1854, align 8
@g_3330 = internal global i64**** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i64***]* @g_3331 to i8*), i64 8) to i64****), align 8
@g_3344 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x i32]]* @g_1071 to i8*), i64 180) to i32*), align 8
@func_1.l_3451 = private unnamed_addr constant [6 x i32] [i32 -1286610966, i32 -1286610966, i32 -1286610966, i32 -1286610966, i32 -1286610966, i32 -1286610966], align 16
@func_1.l_3415 = internal constant { i64, i8, i8, i8 } { i64 -7366963136290219395, i8 77, i8 -1, i8 15 }, align 8
@func_1.l_3335 = internal constant { i64, i8, i8, i8 } { i64 6864387569209683917, i8 103, i8 0, i8 0 }, align 8
@func_1.l_3374 = private unnamed_addr constant [5 x [10 x i32]] [[10 x i32] [i32 -548732994, i32 -2, i32 1868949771, i32 7, i32 -1, i32 -1, i32 1, i32 283537050, i32 -1252724893, i32 -4], [10 x i32] [i32 675379648, i32 -1, i32 -685982609, i32 7, i32 -1252724893, i32 1456104987, i32 1456104987, i32 -1252724893, i32 7, i32 -685982609], [10 x i32] [i32 283537050, i32 283537050, i32 6, i32 -548732994, i32 -1, i32 2, i32 -1, i32 1626725485, i32 814254274, i32 -1372469831], [10 x i32] [i32 -2, i32 1626725485, i32 1, i32 675379648, i32 1456104987, i32 814254274, i32 -1, i32 -548732994, i32 -1, i32 814254274], [10 x i32] [i32 2, i32 -1252724893, i32 1203362835, i32 -1252724893, i32 2, i32 6, i32 -2, i32 -1, i32 -548732994, i32 1626725485]], align 16
@func_1.l_3414 = internal constant [5 x [2 x [8 x i8]]] [[2 x [8 x i8]] [[8 x i8] c"\03+\FD\22\01\22\FD+", [8 x i8] c"\FDD\01\01\01\FD\12-"], [2 x [8 x i8]] [[8 x i8] c"\18\12\22\F9\FD\B8\12\8B", [8 x i8] c"\05\F9\01\FD\B3\B3\FD\01"], [2 x [8 x i8]] [[8 x i8] c"\B3\B3\FD\01\F9\05:E", [8 x i8] c"\B8\FD\F9\22\12\18:E"], [2 x [8 x i8]] [[8 x i8] c"\FD\01\01\01D\FDD\01", [8 x i8] c"\22\01\22\FD+\03\01\8B"], [2 x [8 x i8]] [[8 x i8] c"\01E-\F9\B3\C7+-", [8 x i8] c"\01\B3E\01+::+"]], align 16
@g_2969 = internal global i32** @g_905, align 8
@g_2373 = internal global i32** @g_212, align 8
@func_1.l_3518 = private unnamed_addr constant [5 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@func_1.l_3492 = private unnamed_addr constant [9 x [6 x [4 x i64]]] [[6 x [4 x i64]] [[4 x i64] [i64 -1, i64 -8279595298216600136, i64 -5301857017803067085, i64 7450079295124096486], [4 x i64] [i64 -1, i64 -1, i64 -4258237808192960243, i64 -8279595298216600136], [4 x i64] [i64 -6586062421932904683, i64 7450079295124096486, i64 -6586062421932904683, i64 3], [4 x i64] [i64 -5367365159471632406, i64 7450079295124096486, i64 -5301857017803067085, i64 -8279595298216600136], [4 x i64] [i64 9, i64 -1, i64 -1484097977160902284, i64 7450079295124096486], [4 x i64] [i64 -6586062421932904683, i64 -8279595298216600136, i64 -1484097977160902284, i64 3]], [6 x [4 x i64]] [[4 x i64] [i64 9, i64 -1, i64 -5301857017803067085, i64 -1], [4 x i64] [i64 -5367365159471632406, i64 -1, i64 -6586062421932904683, i64 -1], [4 x i64] [i64 -6586062421932904683, i64 -1, i64 -4258237808192960243, i64 3], [4 x i64] [i64 -1, i64 -8279595298216600136, i64 -5301857017803067085, i64 7450079295124096486], [4 x i64] [i64 -1, i64 -1, i64 -4258237808192960243, i64 -8279595298216600136], [4 x i64] [i64 -6586062421932904683, i64 7450079295124096486, i64 -6586062421932904683, i64 3]], [6 x [4 x i64]] [[4 x i64] [i64 -5367365159471632406, i64 7450079295124096486, i64 -5301857017803067085, i64 -8279595298216600136], [4 x i64] [i64 9, i64 -1, i64 -1484097977160902284, i64 7450079295124096486], [4 x i64] [i64 -6586062421932904683, i64 -8279595298216600136, i64 -1484097977160902284, i64 3], [4 x i64] [i64 9, i64 -1, i64 -5301857017803067085, i64 -1], [4 x i64] [i64 -5367365159471632406, i64 -1, i64 -6586062421932904683, i64 -1], [4 x i64] [i64 -6586062421932904683, i64 -1, i64 -4258237808192960243, i64 3]], [6 x [4 x i64]] [[4 x i64] [i64 -1, i64 -8279595298216600136, i64 -5301857017803067085, i64 7450079295124096486], [4 x i64] [i64 -1, i64 -1, i64 -4258237808192960243, i64 -8279595298216600136], [4 x i64] [i64 -6586062421932904683, i64 7450079295124096486, i64 -6586062421932904683, i64 3], [4 x i64] [i64 -5367365159471632406, i64 7450079295124096486, i64 -5301857017803067085, i64 1963135122933909231], [4 x i64] [i64 -1484097977160902284, i64 0, i64 -5301857017803067085, i64 -1], [4 x i64] [i64 5, i64 1963135122933909231, i64 -5301857017803067085, i64 2934358253586261518]], [6 x [4 x i64]] [[4 x i64] [i64 -1484097977160902284, i64 3, i64 -1, i64 3], [4 x i64] [i64 -4258237808192960243, i64 0, i64 5, i64 3], [4 x i64] [i64 5, i64 3, i64 0, i64 2934358253586261518], [4 x i64] [i64 -6586062421932904683, i64 1963135122933909231, i64 -1, i64 -1], [4 x i64] [i64 -6586062421932904683, i64 0, i64 0, i64 1963135122933909231], [4 x i64] [i64 5, i64 -1, i64 5, i64 2934358253586261518]], [6 x [4 x i64]] [[4 x i64] [i64 -4258237808192960243, i64 -1, i64 -1, i64 1963135122933909231], [4 x i64] [i64 -1484097977160902284, i64 0, i64 -5301857017803067085, i64 -1], [4 x i64] [i64 5, i64 1963135122933909231, i64 -5301857017803067085, i64 2934358253586261518], [4 x i64] [i64 -1484097977160902284, i64 3, i64 -1, i64 3], [4 x i64] [i64 -4258237808192960243, i64 0, i64 5, i64 3], [4 x i64] [i64 5, i64 3, i64 0, i64 2934358253586261518]], [6 x [4 x i64]] [[4 x i64] [i64 -6586062421932904683, i64 1963135122933909231, i64 -1, i64 -1], [4 x i64] [i64 -6586062421932904683, i64 0, i64 0, i64 1963135122933909231], [4 x i64] [i64 5, i64 -1, i64 5, i64 2934358253586261518], [4 x i64] [i64 -4258237808192960243, i64 -1, i64 -1, i64 1963135122933909231], [4 x i64] [i64 -1484097977160902284, i64 0, i64 -5301857017803067085, i64 -1], [4 x i64] [i64 5, i64 1963135122933909231, i64 -5301857017803067085, i64 2934358253586261518]], [6 x [4 x i64]] [[4 x i64] [i64 -1484097977160902284, i64 3, i64 -1, i64 3], [4 x i64] [i64 -4258237808192960243, i64 0, i64 5, i64 3], [4 x i64] [i64 5, i64 3, i64 0, i64 2934358253586261518], [4 x i64] [i64 -6586062421932904683, i64 1963135122933909231, i64 -1, i64 -1], [4 x i64] [i64 -6586062421932904683, i64 0, i64 0, i64 1963135122933909231], [4 x i64] [i64 5, i64 -1, i64 5, i64 2934358253586261518]], [6 x [4 x i64]] [[4 x i64] [i64 -4258237808192960243, i64 -1, i64 -1, i64 1963135122933909231], [4 x i64] [i64 -1484097977160902284, i64 0, i64 -5301857017803067085, i64 -1], [4 x i64] [i64 5, i64 1963135122933909231, i64 -5301857017803067085, i64 2934358253586261518], [4 x i64] [i64 -1484097977160902284, i64 3, i64 -1, i64 3], [4 x i64] [i64 -4258237808192960243, i64 0, i64 5, i64 3], [4 x i64] [i64 5, i64 3, i64 0, i64 2934358253586261518]]], align 16
@func_1.l_3493 = private unnamed_addr constant [6 x [8 x i32]] [[8 x i32] [i32 290483034, i32 -196362256, i32 8, i32 0, i32 0, i32 8, i32 -196362256, i32 290483034], [8 x i32] [i32 474770478, i32 0, i32 8, i32 1224728804, i32 -8, i32 2104798237, i32 -8, i32 1224728804], [8 x i32] [i32 0, i32 -1, i32 0, i32 -1, i32 1224728804, i32 2104798237, i32 8, i32 8], [8 x i32] [i32 8, i32 0, i32 474770478, i32 474770478, i32 0, i32 8, i32 1224728804, i32 -8], [8 x i32] [i32 8, i32 -196362256, i32 290483034, i32 0, i32 1224728804, i32 0, i32 290483034, i32 -196362256], [8 x i32] [i32 0, i32 290483034, i32 2104798237, i32 0, i32 -8, i32 -1, i32 -1, i32 -8]], align 16
@g_2592 = internal global i32* @g_2593, align 8
@g_672 = internal global i32* @g_673, align 8
@g_2920 = internal global i32** @g_905, align 8
@g_905 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_2 to i8*), i64 36) to i32*), align 8
@g_2466 = internal global i32** @g_905, align 8
@g_1227 = internal constant i32** @g_905, align 8
@g_3008 = internal global i16**** null, align 8
@func_1.l_3574 = private unnamed_addr constant { i64, i8, i8, i8 } { i64 5251944127816312981, i8 -56, i8 -4, i8 15 }, align 8
@func_1.l_3589 = private unnamed_addr constant [5 x [5 x [3 x i32]]] [[5 x [3 x i32]] [[3 x i32] [i32 -1, i32 -1, i32 0], [3 x i32] [i32 -1, i32 1497378113, i32 -713361385], [3 x i32] [i32 -3, i32 -6, i32 75753196], [3 x i32] [i32 -713361385, i32 -1391085784, i32 -3], [3 x i32] [i32 -1091793675, i32 -3, i32 75753196]], [5 x [3 x i32]] [[3 x i32] [i32 -432263948, i32 773617966, i32 -713361385], [3 x i32] [i32 0, i32 4, i32 0], [3 x i32] [i32 -1, i32 4, i32 1], [3 x i32] [i32 1, i32 773617966, i32 -1391085784], [3 x i32] [i32 4, i32 -3, i32 -1]], [5 x [3 x i32]] [[3 x i32] [i32 1770576501, i32 -1391085784, i32 -1744140056], [3 x i32] [i32 4, i32 -6, i32 4], [3 x i32] [i32 1, i32 1497378113, i32 1497378113], [3 x i32] [i32 -1, i32 -1, i32 1497378113], [3 x i32] [i32 0, i32 1770576501, i32 4]], [5 x [3 x i32]] [[3 x i32] [i32 -432263948, i32 0, i32 -1744140056], [3 x i32] [i32 -1091793675, i32 655639061, i32 -1], [3 x i32] [i32 -713361385, i32 0, i32 -1391085784], [3 x i32] [i32 -3, i32 1770576501, i32 1], [3 x i32] [i32 -1, i32 -1, i32 0]], [5 x [3 x i32]] [[3 x i32] [i32 -1, i32 1497378113, i32 -713361385], [3 x i32] [i32 -3, i32 -6, i32 75753196], [3 x i32] [i32 -713361385, i32 -1391085784, i32 -3], [3 x i32] [i32 -1091793675, i32 -3, i32 75753196], [3 x i32] [i32 -432263948, i32 773617966, i32 -713361385]]], align 16
@func_1.l_3614 = private unnamed_addr constant [4 x [4 x [10 x i32]]] [[4 x [10 x i32]] [[10 x i32] [i32 1603963540, i32 -539614472, i32 7, i32 1773771697, i32 -539614472, i32 -6, i32 1038631594, i32 -6, i32 -539614472, i32 1773771697], [10 x i32] [i32 -1, i32 -1165810494, i32 -1, i32 7, i32 1038631594, i32 1492539891, i32 7, i32 -1581365688, i32 232113241, i32 -1], [10 x i32] [i32 -1581365688, i32 1603963540, i32 -942918923, i32 3, i32 -1165810494, i32 513269978, i32 -1581365688, i32 -1581365688, i32 513269978, i32 -1165810494], [10 x i32] [i32 1603963540, i32 -1, i32 -1, i32 1603963540, i32 232113241, i32 -539614472, i32 -1165810494, i32 -6, i32 -1, i32 -1581365688]], [4 x [10 x i32]] [[10 x i32] [i32 232113241, i32 -1581365688, i32 7, i32 1492539891, i32 1038631594, i32 7, i32 -1, i32 -1165810494, i32 -1, i32 7], [10 x i32] [i32 3, i32 1603963540, i32 9, i32 1603963540, i32 3, i32 -1, i32 1773771697, i32 3, i32 513269978, i32 1038631594], [10 x i32] [i32 -1653903009, i32 -784663741, i32 -942918923, i32 7, i32 513269978, i32 -1, i32 232113241, i32 -784663741, i32 -784663741, i32 232113241], [10 x i32] [i32 8, i32 7, i32 9, i32 9, i32 7, i32 8, i32 -942918923, i32 -1, i32 -1, i32 9]], [4 x [10 x i32]] [[10 x i32] [i32 -539614472, i32 -1653903009, i32 3, i32 1492539891, i32 232113241, i32 -1165810494, i32 1492539891, i32 -539614472, i32 -6, i32 -539614472], [10 x i32] [i32 -539614472, i32 8, i32 -784663741, i32 7, i32 -784663741, i32 8, i32 -539614472, i32 1, i32 8, i32 -1653903009], [10 x i32] [i32 8, i32 -539614472, i32 1, i32 8, i32 -1653903009, i32 -1, i32 -784663741, i32 -1, i32 1, i32 1], [10 x i32] [i32 -1653903009, i32 -539614472, i32 1038631594, i32 232113241, i32 232113241, i32 1038631594, i32 -539614472, i32 -1653903009, i32 3, i32 1492539891]], [4 x [10 x i32]] [[10 x i32] [i32 7, i32 8, i32 -942918923, i32 -1, i32 -1, i32 9, i32 1492539891, i32 -1, i32 8, i32 232113241], [10 x i32] [i32 -784663741, i32 -1653903009, i32 -942918923, i32 -1, i32 -6, i32 -1, i32 -942918923, i32 -1653903009, i32 -784663741, i32 -942918923], [10 x i32] [i32 -1, i32 7, i32 1038631594, i32 1492539891, i32 7, i32 -1581365688, i32 232113241, i32 -1, i32 1773771697, i32 1492539891], [10 x i32] [i32 -539614472, i32 -784663741, i32 1, i32 1492539891, i32 -942918923, i32 -942918923, i32 1492539891, i32 1, i32 -784663741, i32 -539614472]]], align 16
@func_1.l_3615 = private unnamed_addr constant [6 x [8 x i8*]] [[8 x i8*] [i8* @g_2463, i8* null, i8* @g_2463, i8* @g_2463, i8* null, i8* @g_2463, i8* @g_2463, i8* null], [8 x i8*] [i8* null, i8* @g_2463, i8* @g_2463, i8* null, i8* @g_2463, i8* @g_2463, i8* null, i8* @g_2463], [8 x i8*] [i8* null, i8* null, i8* @g_2463, i8* null, i8* null, i8* @g_2463, i8* null, i8* null], [8 x i8*] [i8* @g_2463, i8* null, i8* @g_2463, i8* @g_2463, i8* null, i8* @g_2463, i8* @g_2463, i8* null], [8 x i8*] [i8* null, i8* @g_2463, i8* @g_2463, i8* null, i8* @g_2463, i8* @g_2463, i8* null, i8* @g_2463], [8 x i8*] [i8* null, i8* null, i8* @g_2463, i8* null, i8* null, i8* @g_2463, i8* null, i8* null]], align 16
@g_741 = internal global i16** @g_742, align 8
@func_1.l_3617 = private unnamed_addr constant [6 x i16] [i16 26308, i16 26308, i16 7, i16 26308, i16 26308, i16 7], align 2
@g_1312 = internal global [3 x [8 x i8*]] [[8 x i8*] [i8* @g_1313, i8* @g_1313, i8* @g_1313, i8* @g_1313, i8* @g_1313, i8* @g_1313, i8* @g_1313, i8* @g_1313], [8 x i8*] [i8* @g_1313, i8* @g_1313, i8* @g_1313, i8* @g_1313, i8* null, i8* @g_1313, i8* @g_1313, i8* @g_1313], [8 x i8*] [i8* @g_1313, i8* null, i8* @g_1313, i8* @g_1313, i8* null, i8* @g_1313, i8* null, i8* @g_1313]], align 16
@g_3026 = internal global i8** @g_41, align 8
@g_2533 = internal global i8*** @g_2534, align 8
@g_560 = internal global i16* @g_58, align 8
@g_2372 = internal global i32*** @g_2373, align 8
@g_2564 = internal global i16** null, align 8
@g_1937 = internal global i64* null, align 8
@g_3331 = internal global [2 x i64***] [i64*** @g_1852, i64*** @g_1852], align 16
@g_742 = internal global i16* @g_743, align 8
@g_41 = internal global i8* @g_42, align 8
@g_2534 = internal global i8** null, align 8
@.str.68 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_73 = internal global { i64, i8, i8, i8 } { i64 2029737994530912994, i8 -13, i8 1, i8 0 }, align 8
@g_433 = internal constant { i64, i8, i8, i8 } { i64 -7587638359343965443, i8 106, i8 -4, i8 15 }, align 8
@g_1737 = internal global <{ { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 } }> <{ { i64, i8, i8, i8 } { i64 8, i8 -63, i8 -3, i8 15 }, { i64, i8, i8, i8 } { i64 8, i8 -63, i8 -3, i8 15 }, { i64, i8, i8, i8 } { i64 8, i8 -63, i8 -3, i8 15 }, { i64, i8, i8, i8 } { i64 8, i8 -63, i8 -3, i8 15 }, { i64, i8, i8, i8 } { i64 8, i8 -63, i8 -3, i8 15 }, { i64, i8, i8, i8 } { i64 8, i8 -63, i8 -3, i8 15 }, { i64, i8, i8, i8 } { i64 8, i8 -63, i8 -3, i8 15 } }>, align 16
@g_2871 = internal global { i64, i8, i8, i8 } { i64 -2529902360985946249, i8 78, i8 1, i8 0 }, align 8
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

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 10
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [10 x i32], [10 x i32]* @g_2, i32 0, i64 %96
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
  %111 = load i32, i32* @g_24, align 4, !tbaa !1
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %113)
  %114 = load i8, i8* @g_42, align 1, !tbaa !9
  %115 = sext i8 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %116)
  %117 = load i16, i16* @g_58, align 2, !tbaa !10
  %118 = zext i16 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %119)
  %120 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 0), align 8, !tbaa !12
  %121 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %121)
  %122 = load i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_73 to %struct.S0*), i32 0, i32 1) to i32*), align 8
  %123 = shl i32 %122, 12
  %124 = ashr i32 %123, 12
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %126)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %127

; <label>:127                                     ; preds = %142, %110
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %129 = icmp slt i32 %128, 9
  br i1 %129, label %130, label %145

; <label>:130                                     ; preds = %127
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [9 x i64], [9 x i64]* @g_114, i32 0, i64 %132
  %134 = load i64, i64* %133, align 8, !tbaa !7
  %135 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %135)
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

; <label>:138                                     ; preds = %130
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %139)
  br label %141

; <label>:141                                     ; preds = %138, %130
  br label %142

; <label>:142                                     ; preds = %141
  %143 = load i32, i32* %i, align 4, !tbaa !1
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %i, align 4, !tbaa !1
  br label %127

; <label>:145                                     ; preds = %127
  %146 = load i16, i16* @g_125, align 2, !tbaa !10
  %147 = sext i16 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %148)
  %149 = load i16, i16* @g_143, align 2, !tbaa !10
  %150 = zext i16 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %151)
  %152 = load i8, i8* @g_145, align 1, !tbaa !9
  %153 = zext i8 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %154)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %155

; <label>:155                                     ; preds = %171, %145
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = icmp slt i32 %156, 10
  br i1 %157, label %158, label %174

; <label>:158                                     ; preds = %155
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [10 x i32], [10 x i32]* @g_159, i32 0, i64 %160
  %162 = load i32, i32* %161, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %164)
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

; <label>:167                                     ; preds = %158
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %168)
  br label %170

; <label>:170                                     ; preds = %167, %158
  br label %171

; <label>:171                                     ; preds = %170
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %i, align 4, !tbaa !1
  br label %155

; <label>:174                                     ; preds = %155
  %175 = load volatile i32, i32* @g_161, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %177)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %178

; <label>:178                                     ; preds = %193, %174
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = icmp slt i32 %179, 5
  br i1 %180, label %181, label %196

; <label>:181                                     ; preds = %178
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [5 x i64], [5 x i64]* @g_162, i32 0, i64 %183
  %185 = load i64, i64* %184, align 8, !tbaa !7
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %186)
  %187 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

; <label>:189                                     ; preds = %181
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %190)
  br label %192

; <label>:192                                     ; preds = %189, %181
  br label %193

; <label>:193                                     ; preds = %192
  %194 = load i32, i32* %i, align 4, !tbaa !1
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %i, align 4, !tbaa !1
  br label %178

; <label>:196                                     ; preds = %178
  %197 = load i8, i8* @g_178, align 1, !tbaa !9
  %198 = sext i8 %197 to i64
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %199)
  %200 = load i8, i8* @g_206, align 1, !tbaa !9
  %201 = sext i8 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %202)
  %203 = load i32, i32* @g_239, align 4, !tbaa !1
  %204 = sext i32 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %205)
  %206 = load i32, i32* @g_319, align 4, !tbaa !1
  %207 = sext i32 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %208)
  %209 = load i8, i8* @g_337, align 1, !tbaa !9
  %210 = zext i8 %209 to i64
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %211)
  %212 = load i8, i8* @g_380, align 1, !tbaa !9
  %213 = sext i8 %212 to i64
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %214)
  %215 = load i16, i16* @g_381, align 2, !tbaa !10
  %216 = zext i16 %215 to i64
  %217 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %217)
  %218 = load i16, i16* @g_386, align 2, !tbaa !10
  %219 = sext i16 %218 to i64
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %220)
  %221 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_433 to %struct.S0*), i32 0, i32 0), align 8, !tbaa !12
  %222 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %222)
  %223 = load i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_433 to %struct.S0*), i32 0, i32 1) to i32*), align 8
  %224 = shl i32 %223, 12
  %225 = ashr i32 %224, 12
  %226 = sext i32 %225 to i64
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %227)
  %228 = load volatile i64, i64* @g_524, align 8, !tbaa !7
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %229)
  %230 = load volatile i8, i8* @g_542, align 1, !tbaa !9
  %231 = sext i8 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %232)
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %233)
  %234 = load i32, i32* @g_673, align 4, !tbaa !1
  %235 = zext i32 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %236)
  %237 = load i64, i64* @g_683, align 8, !tbaa !7
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %238)
  %239 = load volatile i16, i16* @g_743, align 2, !tbaa !10
  %240 = sext i16 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %241)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %242

; <label>:242                                     ; preds = %258, %196
  %243 = load i32, i32* %i, align 4, !tbaa !1
  %244 = icmp slt i32 %243, 8
  br i1 %244, label %245, label %261

; <label>:245                                     ; preds = %242
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [8 x i32], [8 x i32]* @g_745, i32 0, i64 %247
  %249 = load i32, i32* %248, align 4, !tbaa !1
  %250 = zext i32 %249 to i64
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %251)
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

; <label>:254                                     ; preds = %245
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %255)
  br label %257

; <label>:257                                     ; preds = %254, %245
  br label %258

; <label>:258                                     ; preds = %257
  %259 = load i32, i32* %i, align 4, !tbaa !1
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %i, align 4, !tbaa !1
  br label %242

; <label>:261                                     ; preds = %242
  %262 = load volatile i8, i8* @g_866, align 1, !tbaa !9
  %263 = zext i8 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %264)
  %265 = load i32, i32* @g_899, align 4, !tbaa !1
  %266 = sext i32 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %267)
  %268 = load i32, i32* @g_986, align 4, !tbaa !1
  %269 = zext i32 %268 to i64
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %270)
  %271 = load volatile i32, i32* @g_1019, align 4, !tbaa !1
  %272 = zext i32 %271 to i64
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %273)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %274

; <label>:274                                     ; preds = %302, %261
  %275 = load i32, i32* %i, align 4, !tbaa !1
  %276 = icmp slt i32 %275, 6
  br i1 %276, label %277, label %305

; <label>:277                                     ; preds = %274
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %278

; <label>:278                                     ; preds = %298, %277
  %279 = load i32, i32* %j, align 4, !tbaa !1
  %280 = icmp slt i32 %279, 9
  br i1 %280, label %281, label %301

; <label>:281                                     ; preds = %278
  %282 = load i32, i32* %j, align 4, !tbaa !1
  %283 = sext i32 %282 to i64
  %284 = load i32, i32* %i, align 4, !tbaa !1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [6 x [9 x i32]], [6 x [9 x i32]]* @g_1071, i32 0, i64 %285
  %287 = getelementptr inbounds [9 x i32], [9 x i32]* %286, i32 0, i64 %283
  %288 = load i32, i32* %287, align 4, !tbaa !1
  %289 = zext i32 %288 to i64
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %289, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i32 %290)
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

; <label>:293                                     ; preds = %281
  %294 = load i32, i32* %i, align 4, !tbaa !1
  %295 = load i32, i32* %j, align 4, !tbaa !1
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), i32 %294, i32 %295)
  br label %297

; <label>:297                                     ; preds = %293, %281
  br label %298

; <label>:298                                     ; preds = %297
  %299 = load i32, i32* %j, align 4, !tbaa !1
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %j, align 4, !tbaa !1
  br label %278

; <label>:301                                     ; preds = %278
  br label %302

; <label>:302                                     ; preds = %301
  %303 = load i32, i32* %i, align 4, !tbaa !1
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %i, align 4, !tbaa !1
  br label %274

; <label>:305                                     ; preds = %274
  %306 = load i8, i8* @g_1313, align 1, !tbaa !9
  %307 = sext i8 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %308)
  %309 = load volatile i8, i8* @g_1442, align 1, !tbaa !9
  %310 = sext i8 %309 to i64
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %310, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %311)
  %312 = load i64, i64* @g_1628, align 8, !tbaa !7
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %313)
  %314 = load i64, i64* @g_1659, align 8, !tbaa !7
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %314, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %315)
  %316 = load i32, i32* @g_1702, align 4, !tbaa !1
  %317 = zext i32 %316 to i64
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %318)
  %319 = load volatile i32, i32* @g_1704, align 4, !tbaa !1
  %320 = sext i32 %319 to i64
  %321 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %320, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %321)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %322

; <label>:322                                     ; preds = %348, %305
  %323 = load i32, i32* %i, align 4, !tbaa !1
  %324 = icmp slt i32 %323, 7
  br i1 %324, label %325, label %351

; <label>:325                                     ; preds = %322
  %326 = load i32, i32* %i, align 4, !tbaa !1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [7 x %struct.S0], [7 x %struct.S0]* bitcast (<{ { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 } }>* @g_1737 to [7 x %struct.S0]*), i32 0, i64 %327
  %329 = getelementptr inbounds %struct.S0, %struct.S0* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8, !tbaa !12
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %330, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i32 %331)
  %332 = load i32, i32* %i, align 4, !tbaa !1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [7 x %struct.S0], [7 x %struct.S0]* bitcast (<{ { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 }, { i64, i8, i8, i8 } }>* @g_1737 to [7 x %struct.S0]*), i32 0, i64 %333
  %335 = getelementptr inbounds %struct.S0, %struct.S0* %334, i32 0, i32 1
  %336 = bitcast i24* %335 to i32*
  %337 = load i32, i32* %336, align 8
  %338 = shl i32 %337, 12
  %339 = ashr i32 %338, 12
  %340 = sext i32 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i32 %341)
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

; <label>:344                                     ; preds = %325
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %345)
  br label %347

; <label>:347                                     ; preds = %344, %325
  br label %348

; <label>:348                                     ; preds = %347
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %i, align 4, !tbaa !1
  br label %322

; <label>:351                                     ; preds = %322
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %352

; <label>:352                                     ; preds = %368, %351
  %353 = load i32, i32* %i, align 4, !tbaa !1
  %354 = icmp slt i32 %353, 1
  br i1 %354, label %355, label %371

; <label>:355                                     ; preds = %352
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1756, i32 0, i64 %357
  %359 = load i32, i32* %358, align 4, !tbaa !1
  %360 = sext i32 %359 to i64
  %361 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %360, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 %361)
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %367

; <label>:364                                     ; preds = %355
  %365 = load i32, i32* %i, align 4, !tbaa !1
  %366 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %365)
  br label %367

; <label>:367                                     ; preds = %364, %355
  br label %368

; <label>:368                                     ; preds = %367
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %i, align 4, !tbaa !1
  br label %352

; <label>:371                                     ; preds = %352
  %372 = load i64, i64* @g_1790, align 8, !tbaa !7
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %372, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %373)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %374

; <label>:374                                     ; preds = %390, %371
  %375 = load i32, i32* %i, align 4, !tbaa !1
  %376 = icmp slt i32 %375, 4
  br i1 %376, label %377, label %393

; <label>:377                                     ; preds = %374
  %378 = load i32, i32* %i, align 4, !tbaa !1
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [4 x i16], [4 x i16]* @g_1831, i32 0, i64 %379
  %381 = load i16, i16* %380, align 2, !tbaa !10
  %382 = zext i16 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 %383)
  %384 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

; <label>:386                                     ; preds = %377
  %387 = load i32, i32* %i, align 4, !tbaa !1
  %388 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %387)
  br label %389

; <label>:389                                     ; preds = %386, %377
  br label %390

; <label>:390                                     ; preds = %389
  %391 = load i32, i32* %i, align 4, !tbaa !1
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %i, align 4, !tbaa !1
  br label %374

; <label>:393                                     ; preds = %374
  %394 = load i64, i64* @g_1854, align 8, !tbaa !7
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %394, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %395)
  %396 = load i32, i32* @g_1895, align 4, !tbaa !1
  %397 = zext i32 %396 to i64
  %398 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %397, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %398)
  %399 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %399)
  %400 = load i8, i8* @g_2463, align 1, !tbaa !9
  %401 = zext i8 %400 to i64
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %401, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %402)
  %403 = load i32, i32* @g_2581, align 4, !tbaa !1
  %404 = sext i32 %403 to i64
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %405)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %406

; <label>:406                                     ; preds = %446, %393
  %407 = load i32, i32* %i, align 4, !tbaa !1
  %408 = icmp slt i32 %407, 10
  br i1 %408, label %409, label %449

; <label>:409                                     ; preds = %406
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %410

; <label>:410                                     ; preds = %442, %409
  %411 = load i32, i32* %j, align 4, !tbaa !1
  %412 = icmp slt i32 %411, 8
  br i1 %412, label %413, label %445

; <label>:413                                     ; preds = %410
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %414

; <label>:414                                     ; preds = %438, %413
  %415 = load i32, i32* %k, align 4, !tbaa !1
  %416 = icmp slt i32 %415, 3
  br i1 %416, label %417, label %441

; <label>:417                                     ; preds = %414
  %418 = load i32, i32* %k, align 4, !tbaa !1
  %419 = sext i32 %418 to i64
  %420 = load i32, i32* %j, align 4, !tbaa !1
  %421 = sext i32 %420 to i64
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [10 x [8 x [3 x i32]]], [10 x [8 x [3 x i32]]]* @g_2586, i32 0, i64 %423
  %425 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %424, i32 0, i64 %421
  %426 = getelementptr inbounds [3 x i32], [3 x i32]* %425, i32 0, i64 %419
  %427 = load i32, i32* %426, align 4, !tbaa !1
  %428 = sext i32 %427 to i64
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %428, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i32 %429)
  %430 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

; <label>:432                                     ; preds = %417
  %433 = load i32, i32* %i, align 4, !tbaa !1
  %434 = load i32, i32* %j, align 4, !tbaa !1
  %435 = load i32, i32* %k, align 4, !tbaa !1
  %436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i32 %433, i32 %434, i32 %435)
  br label %437

; <label>:437                                     ; preds = %432, %417
  br label %438

; <label>:438                                     ; preds = %437
  %439 = load i32, i32* %k, align 4, !tbaa !1
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %k, align 4, !tbaa !1
  br label %414

; <label>:441                                     ; preds = %414
  br label %442

; <label>:442                                     ; preds = %441
  %443 = load i32, i32* %j, align 4, !tbaa !1
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %j, align 4, !tbaa !1
  br label %410

; <label>:445                                     ; preds = %410
  br label %446

; <label>:446                                     ; preds = %445
  %447 = load i32, i32* %i, align 4, !tbaa !1
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %i, align 4, !tbaa !1
  br label %406

; <label>:449                                     ; preds = %406
  %450 = load volatile i32, i32* @g_2593, align 4, !tbaa !1
  %451 = sext i32 %450 to i64
  %452 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %451, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %452)
  %453 = load i32, i32* @g_2746, align 4, !tbaa !1
  %454 = zext i32 %453 to i64
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %455)
  %456 = load volatile i64, i64* @g_2796, align 8, !tbaa !7
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %457)
  %458 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_2871 to %struct.S0*), i32 0, i32 0), align 8, !tbaa !12
  %459 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %458, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %459)
  %460 = load volatile i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i64, i8, i8, i8 }* @g_2871 to %struct.S0*), i32 0, i32 1) to i32*), align 8
  %461 = shl i32 %460, 12
  %462 = ashr i32 %461, 12
  %463 = sext i32 %462 to i64
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %463, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %464)
  %465 = load i16, i16* @g_2965, align 2, !tbaa !10
  %466 = zext i16 %465 to i64
  %467 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %466, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %467)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %468

; <label>:468                                     ; preds = %483, %449
  %469 = load i32, i32* %i, align 4, !tbaa !1
  %470 = icmp slt i32 %469, 5
  br i1 %470, label %471, label %486

; <label>:471                                     ; preds = %468
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [5 x i64], [5 x i64]* @g_3053, i32 0, i64 %473
  %475 = load i64, i64* %474, align 8, !tbaa !7
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %475, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %476)
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %482

; <label>:479                                     ; preds = %471
  %480 = load i32, i32* %i, align 4, !tbaa !1
  %481 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %480)
  br label %482

; <label>:482                                     ; preds = %479, %471
  br label %483

; <label>:483                                     ; preds = %482
  %484 = load i32, i32* %i, align 4, !tbaa !1
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %i, align 4, !tbaa !1
  br label %468

; <label>:486                                     ; preds = %468
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %487

; <label>:487                                     ; preds = %503, %486
  %488 = load i32, i32* %i, align 4, !tbaa !1
  %489 = icmp slt i32 %488, 9
  br i1 %489, label %490, label %506

; <label>:490                                     ; preds = %487
  %491 = load i32, i32* %i, align 4, !tbaa !1
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [9 x i32], [9 x i32]* @g_3149, i32 0, i64 %492
  %494 = load i32, i32* %493, align 4, !tbaa !1
  %495 = zext i32 %494 to i64
  %496 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %495, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 %496)
  %497 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %502

; <label>:499                                     ; preds = %490
  %500 = load i32, i32* %i, align 4, !tbaa !1
  %501 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %500)
  br label %502

; <label>:502                                     ; preds = %499, %490
  br label %503

; <label>:503                                     ; preds = %502
  %504 = load i32, i32* %i, align 4, !tbaa !1
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %i, align 4, !tbaa !1
  br label %487

; <label>:506                                     ; preds = %487
  %507 = load volatile i32, i32* @g_3427, align 4, !tbaa !1
  %508 = zext i32 %507 to i64
  %509 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %508, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %509)
  %510 = load volatile i64, i64* @g_3495, align 8, !tbaa !7
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %511)
  %512 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 4294967295, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %512)
  %513 = load i32, i32* @g_3628, align 4, !tbaa !1
  %514 = zext i32 %513 to i64
  %515 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %514, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %515)
  %516 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %517 = zext i32 %516 to i64
  %518 = xor i64 %517, 4294967295
  %519 = trunc i64 %518 to i32
  %520 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %519, i32 %520)
  %521 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %521) #1
  %522 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %522) #1
  %523 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %523) #1
  %524 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %524) #1
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
  %l_13 = alloca %struct.S0, align 8
  %l_14 = alloca [1 x i16], align 2
  %l_3305 = alloca [10 x [3 x [1 x i32]]], align 16
  %l_3318 = alloca i32*, align 8
  %l_3317 = alloca i32**, align 8
  %l_3320 = alloca i8, align 1
  %l_3325 = alloca i8****, align 8
  %l_3326 = alloca [2 x i8], align 1
  %l_3329 = alloca i64***, align 8
  %l_3328 = alloca i64****, align 8
  %l_3327 = alloca [6 x i64*****], align 16
  %l_3411 = alloca i32, align 4
  %l_3494 = alloca i32, align 4
  %l_3529 = alloca i64***, align 8
  %l_3528 = alloca i64****, align 8
  %l_3527 = alloca i64*****, align 8
  %l_3579 = alloca [10 x i32], align 16
  %l_3616 = alloca [6 x [3 x i32**]], align 16
  %l_3622 = alloca i8, align 1
  %l_3625 = alloca i64, align 8
  %l_3631 = alloca i64, align 8
  %l_3638 = alloca i64**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_3316 = alloca [10 x i32**], align 16
  %l_3319 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %l_3352 = alloca i32, align 4
  %l_3392 = alloca i32**, align 8
  %l_3391 = alloca i32***, align 8
  %l_3422 = alloca i32, align 4
  %l_3451 = alloca [6 x i32], align 16
  %l_3502 = alloca i16***, align 8
  %l_3501 = alloca i16****, align 8
  %l_3517 = alloca i32, align 4
  %l_3548 = alloca i64*, align 8
  %l_3547 = alloca i64**, align 8
  %l_3658 = alloca i16*, align 8
  %l_3657 = alloca i16**, align 8
  %i2 = alloca i32, align 4
  %l_3351 = alloca i64, align 8
  %l_3358 = alloca i32***, align 8
  %l_3371 = alloca i32, align 4
  %l_3372 = alloca i32, align 4
  %l_3373 = alloca i32, align 4
  %l_3413 = alloca i32, align 4
  %l_3430 = alloca i8, align 1
  %l_3450 = alloca i32*, align 8
  %l_3346 = alloca i32*, align 8
  %l_3345 = alloca [1 x [4 x i32**]], align 16
  %l_3362 = alloca i32, align 4
  %l_3369 = alloca i32, align 4
  %l_3370 = alloca [3 x i32], align 4
  %l_3374 = alloca [5 x [10 x i32]], align 16
  %l_3409 = alloca i64*, align 8
  %l_3431 = alloca i64, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k5 = alloca i32, align 4
  %2 = alloca i32
  %l_3456 = alloca i16, align 2
  %l_3458 = alloca i32, align 4
  %l_3465 = alloca i32, align 4
  %l_3469 = alloca i32, align 4
  %l_3470 = alloca i32, align 4
  %l_3472 = alloca i32, align 4
  %l_3474 = alloca i32, align 4
  %l_3475 = alloca i32, align 4
  %l_3479 = alloca i32, align 4
  %l_3480 = alloca i32, align 4
  %l_3482 = alloca i32, align 4
  %l_3484 = alloca i32, align 4
  %l_3499 = alloca i16***, align 8
  %l_3498 = alloca i16****, align 8
  %l_3500 = alloca [8 x i16*****], align 16
  %l_3518 = alloca [5 x i32], align 16
  %l_3519 = alloca i32, align 4
  %l_3549 = alloca i64**, align 8
  %l_3560 = alloca i64***, align 8
  %l_3578 = alloca i64, align 8
  %l_3609 = alloca i64, align 8
  %l_3642 = alloca i8*, align 8
  %i6 = alloca i32, align 4
  %l_3454 = alloca i16, align 2
  %l_3455 = alloca i16, align 2
  %l_3457 = alloca i32*, align 8
  %l_3473 = alloca i32, align 4
  %l_3481 = alloca i32, align 4
  %l_3483 = alloca i32, align 4
  %l_3485 = alloca i16, align 2
  %l_3492 = alloca [9 x [6 x [4 x i64]]], align 16
  %l_3493 = alloca [6 x [8 x i32]], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  %l_3466 = alloca i64, align 8
  %l_3467 = alloca i32, align 4
  %l_3468 = alloca i32, align 4
  %l_3476 = alloca i32, align 4
  %l_3477 = alloca i32, align 4
  %l_3478 = alloca i32, align 4
  %l_3464 = alloca [3 x i32*], align 16
  %l_3471 = alloca i64, align 8
  %l_3488 = alloca i32**, align 8
  %i10 = alloca i32, align 4
  %l_3489 = alloca i32*, align 8
  %l_3490 = alloca i32*, align 8
  %l_3491 = alloca [10 x [7 x i32*]], align 16
  %i11 = alloca i32, align 4
  %j12 = alloca i32, align 4
  %l_3515 = alloca i32, align 4
  %l_3538 = alloca i32, align 4
  %l_3574 = alloca %struct.S0, align 8
  %l_3575 = alloca i32, align 4
  %l_3589 = alloca [5 x [5 x [3 x i32]]], align 16
  %l_3614 = alloca [4 x [4 x [10 x i32]]], align 16
  %l_3615 = alloca [6 x [8 x i8*]], align 16
  %i13 = alloca i32, align 4
  %j14 = alloca i32, align 4
  %k15 = alloca i32, align 4
  %l_3507 = alloca [1 x i8], align 1
  %l_3508 = alloca i8*, align 8
  %l_3516 = alloca i32, align 4
  %l_3526 = alloca i64***, align 8
  %l_3525 = alloca [7 x i64****], align 16
  %l_3524 = alloca [9 x i64*****], align 16
  %i16 = alloca i32, align 4
  %l_3571 = alloca i32, align 4
  %l_3576 = alloca i8, align 1
  %l_3582 = alloca i32**, align 8
  %l_3617 = alloca [6 x i16], align 2
  %l_3626 = alloca i32, align 4
  %l_3627 = alloca i32, align 4
  %l_3649 = alloca i32*, align 8
  %i17 = alloca i32, align 4
  %l_3618 = alloca i32*, align 8
  %l_3619 = alloca i32*, align 8
  %l_3620 = alloca i32*, align 8
  %l_3621 = alloca [4 x [2 x i32*]], align 16
  %l_3641 = alloca i8**, align 8
  %l_3643 = alloca i32, align 4
  %l_3644 = alloca i32, align 4
  %i18 = alloca i32, align 4
  %j19 = alloca i32, align 4
  %3 = bitcast %struct.S0* %l_13 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.S0* %l_13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ({ i64, i8, i8, i8 }* @func_1.l_13 to i8*), i64 16, i32 8, i1 false)
  %5 = bitcast [1 x i16]* %l_14 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  %6 = bitcast [10 x [3 x [1 x i32]]]* %l_3305 to i8*
  call void @llvm.lifetime.start(i64 120, i8* %6) #1
  %7 = bitcast [10 x [3 x [1 x i32]]]* %l_3305 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([10 x [3 x [1 x i32]]]* @func_1.l_3305 to i8*), i64 120, i32 16, i1 false)
  %8 = bitcast i32** %l_3318 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_673, i32** %l_3318, align 8, !tbaa !5
  %9 = bitcast i32*** %l_3317 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32** %l_3318, i32*** %l_3317, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_3320) #1
  store i8 -1, i8* %l_3320, align 1, !tbaa !9
  %10 = bitcast i8***** %l_3325 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8**** null, i8***** %l_3325, align 8, !tbaa !5
  %11 = bitcast [2 x i8]* %l_3326 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  %12 = bitcast i64**** %l_3329 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64*** null, i64**** %l_3329, align 8, !tbaa !5
  %13 = bitcast i64***** %l_3328 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64**** %l_3329, i64***** %l_3328, align 8, !tbaa !5
  %14 = bitcast [6 x i64*****]* %l_3327 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %14) #1
  %15 = getelementptr inbounds [6 x i64*****], [6 x i64*****]* %l_3327, i64 0, i64 0
  store i64***** %l_3328, i64****** %15, !tbaa !5
  %16 = getelementptr inbounds i64*****, i64****** %15, i64 1
  store i64***** %l_3328, i64****** %16, !tbaa !5
  %17 = getelementptr inbounds i64*****, i64****** %16, i64 1
  store i64***** %l_3328, i64****** %17, !tbaa !5
  %18 = getelementptr inbounds i64*****, i64****** %17, i64 1
  store i64***** %l_3328, i64****** %18, !tbaa !5
  %19 = getelementptr inbounds i64*****, i64****** %18, i64 1
  store i64***** %l_3328, i64****** %19, !tbaa !5
  %20 = getelementptr inbounds i64*****, i64****** %19, i64 1
  store i64***** %l_3328, i64****** %20, !tbaa !5
  %21 = bitcast i32* %l_3411 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 1, i32* %l_3411, align 4, !tbaa !1
  %22 = bitcast i32* %l_3494 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 5, i32* %l_3494, align 4, !tbaa !1
  %23 = bitcast i64**** %l_3529 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i64*** @g_1936, i64**** %l_3529, align 8, !tbaa !5
  %24 = bitcast i64***** %l_3528 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i64**** %l_3529, i64***** %l_3528, align 8, !tbaa !5
  %25 = bitcast i64****** %l_3527 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i64***** %l_3528, i64****** %l_3527, align 8, !tbaa !5
  %26 = bitcast [10 x i32]* %l_3579 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %26) #1
  %27 = bitcast [10 x i32]* %l_3579 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([10 x i32]* @func_1.l_3579 to i8*), i64 40, i32 16, i1 false)
  %28 = bitcast [6 x [3 x i32**]]* %l_3616 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %28) #1
  %29 = bitcast [6 x [3 x i32**]]* %l_3616 to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 144, i32 16, i1 false)
  %30 = bitcast i8* %29 to [6 x [3 x i32**]]*
  %31 = getelementptr [6 x [3 x i32**]], [6 x [3 x i32**]]* %30, i32 0, i32 0
  %32 = getelementptr [3 x i32**], [3 x i32**]* %31, i32 0, i32 1
  store i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 16) to i32**), i32*** %32
  %33 = getelementptr [6 x [3 x i32**]], [6 x [3 x i32**]]* %30, i32 0, i32 1
  %34 = getelementptr [3 x i32**], [3 x i32**]* %33, i32 0, i32 1
  store i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 16) to i32**), i32*** %34
  %35 = getelementptr [6 x [3 x i32**]], [6 x [3 x i32**]]* %30, i32 0, i32 2
  %36 = getelementptr [3 x i32**], [3 x i32**]* %35, i32 0, i32 1
  store i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 16) to i32**), i32*** %36
  %37 = getelementptr [6 x [3 x i32**]], [6 x [3 x i32**]]* %30, i32 0, i32 3
  %38 = getelementptr [3 x i32**], [3 x i32**]* %37, i32 0, i32 1
  store i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 16) to i32**), i32*** %38
  %39 = getelementptr [6 x [3 x i32**]], [6 x [3 x i32**]]* %30, i32 0, i32 4
  %40 = getelementptr [3 x i32**], [3 x i32**]* %39, i32 0, i32 1
  store i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 16) to i32**), i32*** %40
  %41 = getelementptr [6 x [3 x i32**]], [6 x [3 x i32**]]* %30, i32 0, i32 5
  %42 = getelementptr [3 x i32**], [3 x i32**]* %41, i32 0, i32 1
  store i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [5 x i32*]]* @g_1001 to i8*), i64 16) to i32**), i32*** %42
  call void @llvm.lifetime.start(i64 1, i8* %l_3622) #1
  store i8 0, i8* %l_3622, align 1, !tbaa !9
  %43 = bitcast i64* %l_3625 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store i64 4869730526902967733, i64* %l_3625, align 8, !tbaa !7
  %44 = bitcast i64* %l_3631 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i64 1987826727105782736, i64* %l_3631, align 8, !tbaa !7
  %45 = bitcast i64*** %l_3638 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i64** getelementptr inbounds ([10 x i64*], [10 x i64*]* @g_1810, i32 0, i64 6), i64*** %l_3638, align 8, !tbaa !5
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %49

; <label>:49                                      ; preds = %56, %0
  %50 = load i32, i32* %i, align 4, !tbaa !1
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %59

; <label>:52                                      ; preds = %49
  %53 = load i32, i32* %i, align 4, !tbaa !1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1 x i16], [1 x i16]* %l_14, i32 0, i64 %54
  store i16 8, i16* %55, align 2, !tbaa !10
  br label %56

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %i, align 4, !tbaa !1
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %i, align 4, !tbaa !1
  br label %49

; <label>:59                                      ; preds = %49
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %60

; <label>:60                                      ; preds = %67, %59
  %61 = load i32, i32* %i, align 4, !tbaa !1
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %70

; <label>:63                                      ; preds = %60
  %64 = load i32, i32* %i, align 4, !tbaa !1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %l_3326, i32 0, i64 %65
  store i8 -109, i8* %66, align 1, !tbaa !9
  br label %67

; <label>:67                                      ; preds = %63
  %68 = load i32, i32* %i, align 4, !tbaa !1
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i, align 4, !tbaa !1
  br label %60

; <label>:70                                      ; preds = %60
  store i32 7, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_2, i32 0, i64 9), align 4, !tbaa !1
  br label %71

; <label>:71                                      ; preds = %82, %70
  %72 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_2, i32 0, i64 9), align 4, !tbaa !1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

; <label>:74                                      ; preds = %71
  %75 = bitcast [10 x i32**]* %l_3316 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %75) #1
  %76 = bitcast [10 x i32**]* %l_3316 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* bitcast ([10 x i32**]* @func_1.l_3316 to i8*), i64 80, i32 16, i1 false)
  %77 = bitcast i32* %l_3319 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  store i32 -9, i32* %l_3319, align 4, !tbaa !1
  %78 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %l_3319 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast [10 x i32**]* %l_3316 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %81) #1
  br label %82

; <label>:82                                      ; preds = %74
  %83 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_2, i32 0, i64 9), align 4, !tbaa !1
  %84 = sext i32 %83 to i64
  %85 = call i64 @safe_sub_func_int64_t_s_s(i64 %84, i64 7)
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_2, i32 0, i64 9), align 4, !tbaa !1
  br label %71

; <label>:87                                      ; preds = %71
  br label %88

; <label>:88                                      ; preds = %1093, %87
  %89 = load i64**, i64*** @g_1852, align 8, !tbaa !5
  %90 = load i64*, i64** %89, align 8, !tbaa !5
  %91 = load i64, i64* %90, align 8, !tbaa !7
  %92 = load i8****, i8***** %l_3325, align 8, !tbaa !5
  %93 = load i8****, i8***** %l_3325, align 8, !tbaa !5
  %94 = icmp ne i8**** %92, %93
  %95 = zext i1 %94 to i32
  %96 = trunc i32 %95 to i8
  %97 = icmp ne i32*** null, %l_3317
  %98 = zext i1 %97 to i32
  %99 = load i8, i8* %l_3320, align 1, !tbaa !9
  %100 = zext i8 %99 to i32
  %101 = getelementptr inbounds [10 x [3 x [1 x i32]]], [10 x [3 x [1 x i32]]]* %l_3305, i32 0, i64 8
  %102 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %101, i32 0, i64 0
  %103 = getelementptr inbounds [1 x i32], [1 x i32]* %102, i32 0, i64 0
  store i32 %100, i32* %103, align 4, !tbaa !1
  %104 = icmp sge i32 %98, %100
  %105 = zext i1 %104 to i32
  %106 = load i32*, i32** @g_212, align 8, !tbaa !5
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = and i32 %107, %105
  store i32 %108, i32* %106, align 4, !tbaa !1
  %109 = load i8, i8* %l_3320, align 1, !tbaa !9
  %110 = load i8***, i8**** @g_3025, align 8, !tbaa !5
  %111 = load i8**, i8*** %110, align 8, !tbaa !5
  %112 = load i8*, i8** %111, align 8, !tbaa !5
  %113 = load i8, i8* %112, align 1, !tbaa !9
  %114 = sext i8 %113 to i64
  %115 = icmp ne i64 %114, 173
  %116 = zext i1 %115 to i32
  %117 = trunc i32 %116 to i8
  %118 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %96, i8 zeroext %117)
  %119 = zext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

; <label>:121                                     ; preds = %88
  %122 = load i8****, i8***** @g_3024, align 8, !tbaa !5
  %123 = load i8***, i8**** %122, align 8, !tbaa !5
  %124 = load i8**, i8*** %123, align 8, !tbaa !5
  %125 = load i8*, i8** %124, align 8, !tbaa !5
  %126 = load i8, i8* %125, align 1, !tbaa !9
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br label %129

; <label>:129                                     ; preds = %121, %88
  %130 = phi i1 [ false, %88 ], [ %128, %121 ]
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds [1 x i16], [1 x i16]* %l_14, i32 0, i64 0
  %133 = load i16, i16* %132, align 2, !tbaa !10
  %134 = zext i16 %133 to i32
  %135 = icmp sle i32 %131, %134
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = icmp sge i64 %91, %137
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 -4, %140
  %142 = zext i1 %141 to i32
  %143 = trunc i32 %142 to i16
  %144 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext -1, i16 zeroext %143)
  %145 = zext i16 %144 to i64
  %146 = icmp sgt i64 1, %145
  %147 = zext i1 %146 to i32
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.S0, %struct.S0* %l_13, i32 0, i32 0
  %150 = load i64, i64* %149, align 8, !tbaa !12
  %151 = xor i64 %148, %150
  %152 = load i64*, i64** @g_1853, align 8, !tbaa !5
  %153 = load i64, i64* %152, align 8, !tbaa !7
  %154 = icmp ult i64 %151, %153
  %155 = zext i1 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = load i64*, i64** @g_1853, align 8, !tbaa !5
  %158 = load i64, i64* %157, align 8, !tbaa !7
  %159 = icmp eq i64 %156, %158
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = icmp sgt i64 %161, 177558932
  %163 = zext i1 %162 to i32
  %164 = getelementptr inbounds [2 x i8], [2 x i8]* %l_3326, i32 0, i64 1
  %165 = load i8, i8* %164, align 1, !tbaa !9
  %166 = sext i8 %165 to i32
  %167 = and i32 %166, %163
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %164, align 1, !tbaa !9
  store i64**** null, i64***** @g_3330, align 8, !tbaa !5
  store i64 0, i64* @g_683, align 8, !tbaa !7
  br label %169

; <label>:169                                     ; preds = %1108, %129
  %170 = load i64, i64* @g_683, align 8, !tbaa !7
  %171 = icmp ule i64 %170, 0
  br i1 %171, label %172, label %1111

; <label>:172                                     ; preds = %169
  %173 = bitcast i32* %l_3352 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  store i32 477019354, i32* %l_3352, align 4, !tbaa !1
  %174 = bitcast i32*** %l_3392 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %174) #1
  store i32** @g_3344, i32*** %l_3392, align 8, !tbaa !5
  %175 = bitcast i32**** %l_3391 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  store i32*** %l_3392, i32**** %l_3391, align 8, !tbaa !5
  %176 = bitcast i32* %l_3422 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #1
  store i32 760686372, i32* %l_3422, align 4, !tbaa !1
  %177 = bitcast [6 x i32]* %l_3451 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %177) #1
  %178 = bitcast [6 x i32]* %l_3451 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* bitcast ([6 x i32]* @func_1.l_3451 to i8*), i64 24, i32 16, i1 false)
  %179 = bitcast i16**** %l_3502 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #1
  store i16*** null, i16**** %l_3502, align 8, !tbaa !5
  %180 = bitcast i16***** %l_3501 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %180) #1
  store i16**** %l_3502, i16***** %l_3501, align 8, !tbaa !5
  %181 = bitcast i32* %l_3517 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  store i32 1447747384, i32* %l_3517, align 4, !tbaa !1
  %182 = bitcast i64** %l_3548 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %182) #1
  store i64* @g_1628, i64** %l_3548, align 8, !tbaa !5
  %183 = bitcast i64*** %l_3547 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #1
  store i64** %l_3548, i64*** %l_3547, align 8, !tbaa !5
  %184 = bitcast i16** %l_3658 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %184) #1
  store i16* @g_386, i16** %l_3658, align 8, !tbaa !5
  %185 = bitcast i16*** %l_3657 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #1
  store i16** %l_3658, i16*** %l_3657, align 8, !tbaa !5
  %186 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  store i32 0, i32* @g_899, align 4, !tbaa !1
  br label %187

; <label>:187                                     ; preds = %266, %172
  %188 = load i32, i32* @g_899, align 4, !tbaa !1
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %269

; <label>:190                                     ; preds = %187
  %191 = bitcast i64* %l_3351 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %191) #1
  store i64 0, i64* %l_3351, align 8, !tbaa !7
  %192 = bitcast i32**** %l_3358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %192) #1
  store i32*** %l_3317, i32**** %l_3358, align 8, !tbaa !5
  %193 = bitcast i32* %l_3371 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #1
  store i32 -718175575, i32* %l_3371, align 4, !tbaa !1
  %194 = bitcast i32* %l_3372 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %194) #1
  store i32 -1872466922, i32* %l_3372, align 4, !tbaa !1
  %195 = bitcast i32* %l_3373 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #1
  store i32 -4, i32* %l_3373, align 4, !tbaa !1
  %196 = bitcast i32* %l_3413 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %196) #1
  store i32 -1, i32* %l_3413, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_3430) #1
  store i8 -1, i8* %l_3430, align 1, !tbaa !9
  %197 = bitcast i32** %l_3450 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %197) #1
  store i32* %l_3371, i32** %l_3450, align 8, !tbaa !5
  store i32 0, i32* @g_986, align 4, !tbaa !1
  br label %198

; <label>:198                                     ; preds = %241, %190
  %199 = load i32, i32* @g_986, align 4, !tbaa !1
  %200 = icmp ule i32 %199, 0
  br i1 %200, label %201, label %244

; <label>:201                                     ; preds = %198
  %202 = bitcast i32** %l_3346 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %202) #1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_745, i32 0, i64 1), i32** %l_3346, align 8, !tbaa !5
  %203 = bitcast [1 x [4 x i32**]]* %l_3345 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %203) #1
  %204 = getelementptr inbounds [1 x [4 x i32**]], [1 x [4 x i32**]]* %l_3345, i64 0, i64 0
  %205 = getelementptr inbounds [4 x i32**], [4 x i32**]* %204, i64 0, i64 0
  store i32** %l_3346, i32*** %205, !tbaa !5
  %206 = getelementptr inbounds i32**, i32*** %205, i64 1
  store i32** %l_3346, i32*** %206, !tbaa !5
  %207 = getelementptr inbounds i32**, i32*** %206, i64 1
  store i32** %l_3346, i32*** %207, !tbaa !5
  %208 = getelementptr inbounds i32**, i32*** %207, i64 1
  store i32** %l_3346, i32*** %208, !tbaa !5
  %209 = bitcast i32* %l_3362 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #1
  store i32 -1, i32* %l_3362, align 4, !tbaa !1
  %210 = bitcast i32* %l_3369 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %210) #1
  store i32 -9, i32* %l_3369, align 4, !tbaa !1
  %211 = bitcast [3 x i32]* %l_3370 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %211) #1
  %212 = bitcast [5 x [10 x i32]]* %l_3374 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %212) #1
  %213 = bitcast [5 x [10 x i32]]* %l_3374 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* bitcast ([5 x [10 x i32]]* @func_1.l_3374 to i8*), i64 200, i32 16, i1 false)
  %214 = bitcast i64** %l_3409 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %214) #1
  store i64* null, i64** %l_3409, align 8, !tbaa !5
  %215 = bitcast i64* %l_3431 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %215) #1
  store i64 1, i64* %l_3431, align 8, !tbaa !7
  %216 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %216) #1
  %217 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #1
  %218 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %219

; <label>:219                                     ; preds = %226, %201
  %220 = load i32, i32* %i3, align 4, !tbaa !1
  %221 = icmp slt i32 %220, 3
  br i1 %221, label %222, label %229

; <label>:222                                     ; preds = %219
  %223 = load i32, i32* %i3, align 4, !tbaa !1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [3 x i32], [3 x i32]* %l_3370, i32 0, i64 %224
  store i32 1, i32* %225, align 4, !tbaa !1
  br label %226

; <label>:226                                     ; preds = %222
  %227 = load i32, i32* %i3, align 4, !tbaa !1
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %i3, align 4, !tbaa !1
  br label %219

; <label>:229                                     ; preds = %219
  %230 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #1
  %231 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i64* %l_3431 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast i64** %l_3409 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = bitcast [5 x [10 x i32]]* %l_3374 to i8*
  call void @llvm.lifetime.end(i64 200, i8* %235) #1
  %236 = bitcast [3 x i32]* %l_3370 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %236) #1
  %237 = bitcast i32* %l_3369 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i32* %l_3362 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast [1 x [4 x i32**]]* %l_3345 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %239) #1
  %240 = bitcast i32** %l_3346 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #1
  br label %241

; <label>:241                                     ; preds = %229
  %242 = load i32, i32* @g_986, align 4, !tbaa !1
  %243 = add i32 %242, 1
  store i32 %243, i32* @g_986, align 4, !tbaa !1
  br label %198

; <label>:244                                     ; preds = %198
  store i32* %l_3371, i32** %l_3450, align 8, !tbaa !5
  store i32 0, i32* %l_3352, align 4, !tbaa !1
  br label %245

; <label>:245                                     ; preds = %255, %244
  %246 = load i32, i32* %l_3352, align 4, !tbaa !1
  %247 = icmp ule i32 %246, 0
  br i1 %247, label %248, label %258

; <label>:248                                     ; preds = %245
  %249 = load volatile i32**, i32*** @g_2969, align 8, !tbaa !5
  %250 = load i32*, i32** %249, align 8, !tbaa !5
  %251 = load i32, i32* %250, align 4, !tbaa !1
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

; <label>:253                                     ; preds = %248
  br label %258

; <label>:254                                     ; preds = %248
  br label %255

; <label>:255                                     ; preds = %254
  %256 = load i32, i32* %l_3352, align 4, !tbaa !1
  %257 = add i32 %256, 1
  store i32 %257, i32* %l_3352, align 4, !tbaa !1
  br label %245

; <label>:258                                     ; preds = %253, %245
  %259 = bitcast i32** %l_3450 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3430) #1
  %260 = bitcast i32* %l_3413 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %l_3373 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %l_3372 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i32* %l_3371 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32**** %l_3358 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast i64* %l_3351 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  br label %266

; <label>:266                                     ; preds = %258
  %267 = load i32, i32* @g_899, align 4, !tbaa !1
  %268 = sub nsw i32 %267, 1
  store i32 %268, i32* @g_899, align 4, !tbaa !1
  br label %187

; <label>:269                                     ; preds = %187
  %270 = getelementptr inbounds [6 x i32], [6 x i32]* %l_3451, i32 0, i64 4
  %271 = load i32, i32* %270, align 4, !tbaa !1
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

; <label>:273                                     ; preds = %269
  store i32 14, i32* %2
  br label %1093

; <label>:274                                     ; preds = %269
  %275 = getelementptr inbounds [10 x [3 x [1 x i32]]], [10 x [3 x [1 x i32]]]* %l_3305, i32 0, i64 8
  %276 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %275, i32 0, i64 0
  %277 = getelementptr inbounds [1 x i32], [1 x i32]* %276, i32 0, i64 0
  %278 = load i32, i32* %277, align 4, !tbaa !1
  %279 = load i32**, i32*** @g_2373, align 8, !tbaa !5
  %280 = load i32*, i32** %279, align 8, !tbaa !5
  store i32 %278, i32* %280, align 4, !tbaa !1
  store i32 0, i32* @g_24, align 4, !tbaa !1
  br label %281

; <label>:281                                     ; preds = %1089, %274
  %282 = load i32, i32* @g_24, align 4, !tbaa !1
  %283 = icmp sge i32 %282, 0
  br i1 %283, label %284, label %1092

; <label>:284                                     ; preds = %281
  %285 = bitcast i16* %l_3456 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %285) #1
  store i16 0, i16* %l_3456, align 2, !tbaa !10
  %286 = bitcast i32* %l_3458 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %286) #1
  store i32 -931063001, i32* %l_3458, align 4, !tbaa !1
  %287 = bitcast i32* %l_3465 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %287) #1
  store i32 1226647097, i32* %l_3465, align 4, !tbaa !1
  %288 = bitcast i32* %l_3469 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %288) #1
  store i32 -6, i32* %l_3469, align 4, !tbaa !1
  %289 = bitcast i32* %l_3470 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %289) #1
  store i32 1303074042, i32* %l_3470, align 4, !tbaa !1
  %290 = bitcast i32* %l_3472 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %290) #1
  store i32 -1044616343, i32* %l_3472, align 4, !tbaa !1
  %291 = bitcast i32* %l_3474 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %291) #1
  store i32 0, i32* %l_3474, align 4, !tbaa !1
  %292 = bitcast i32* %l_3475 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %292) #1
  store i32 50831762, i32* %l_3475, align 4, !tbaa !1
  %293 = bitcast i32* %l_3479 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %293) #1
  store i32 2004116475, i32* %l_3479, align 4, !tbaa !1
  %294 = bitcast i32* %l_3480 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %294) #1
  store i32 1, i32* %l_3480, align 4, !tbaa !1
  %295 = bitcast i32* %l_3482 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %295) #1
  store i32 -4, i32* %l_3482, align 4, !tbaa !1
  %296 = bitcast i32* %l_3484 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %296) #1
  store i32 5, i32* %l_3484, align 4, !tbaa !1
  %297 = bitcast i16**** %l_3499 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %297) #1
  store i16*** null, i16**** %l_3499, align 8, !tbaa !5
  %298 = bitcast i16***** %l_3498 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %298) #1
  store i16**** %l_3499, i16***** %l_3498, align 8, !tbaa !5
  %299 = bitcast [8 x i16*****]* %l_3500 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %299) #1
  %300 = getelementptr inbounds [8 x i16*****], [8 x i16*****]* %l_3500, i64 0, i64 0
  store i16***** %l_3498, i16****** %300, !tbaa !5
  %301 = getelementptr inbounds i16*****, i16****** %300, i64 1
  store i16***** %l_3498, i16****** %301, !tbaa !5
  %302 = getelementptr inbounds i16*****, i16****** %301, i64 1
  store i16***** %l_3498, i16****** %302, !tbaa !5
  %303 = getelementptr inbounds i16*****, i16****** %302, i64 1
  store i16***** %l_3498, i16****** %303, !tbaa !5
  %304 = getelementptr inbounds i16*****, i16****** %303, i64 1
  store i16***** %l_3498, i16****** %304, !tbaa !5
  %305 = getelementptr inbounds i16*****, i16****** %304, i64 1
  store i16***** %l_3498, i16****** %305, !tbaa !5
  %306 = getelementptr inbounds i16*****, i16****** %305, i64 1
  store i16***** %l_3498, i16****** %306, !tbaa !5
  %307 = getelementptr inbounds i16*****, i16****** %306, i64 1
  store i16***** %l_3498, i16****** %307, !tbaa !5
  %308 = bitcast [5 x i32]* %l_3518 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %308) #1
  %309 = bitcast [5 x i32]* %l_3518 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %309, i8* bitcast ([5 x i32]* @func_1.l_3518 to i8*), i64 20, i32 16, i1 false)
  %310 = bitcast i32* %l_3519 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %310) #1
  store i32 3, i32* %l_3519, align 4, !tbaa !1
  %311 = bitcast i64*** %l_3549 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %311) #1
  store i64** %l_3548, i64*** %l_3549, align 8, !tbaa !5
  %312 = bitcast i64**** %l_3560 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %312) #1
  store i64*** null, i64**** %l_3560, align 8, !tbaa !5
  %313 = bitcast i64* %l_3578 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %313) #1
  store i64 -1, i64* %l_3578, align 8, !tbaa !7
  %314 = bitcast i64* %l_3609 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %314) #1
  store i64 -2264109930592939922, i64* %l_3609, align 8, !tbaa !7
  %315 = bitcast i8** %l_3642 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %315) #1
  store i8* null, i8** %l_3642, align 8, !tbaa !5
  %316 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %316) #1
  %317 = load i8, i8* @g_42, align 1, !tbaa !9
  %318 = icmp ne i8 %317, 0
  br i1 %318, label %319, label %320

; <label>:319                                     ; preds = %284
  store i32 11, i32* %2
  br label %1064

; <label>:320                                     ; preds = %284
  store i8 0, i8* @g_42, align 1, !tbaa !9
  br label %321

; <label>:321                                     ; preds = %584, %320
  %322 = load i8, i8* @g_42, align 1, !tbaa !9
  %323 = sext i8 %322 to i32
  %324 = icmp sge i32 %323, 0
  br i1 %324, label %325, label %589

; <label>:325                                     ; preds = %321
  %326 = bitcast i16* %l_3454 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %326) #1
  store i16 -5, i16* %l_3454, align 2, !tbaa !10
  %327 = bitcast i16* %l_3455 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %327) #1
  store i16 -20325, i16* %l_3455, align 2, !tbaa !10
  %328 = bitcast i32** %l_3457 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %328) #1
  store i32* @g_986, i32** %l_3457, align 8, !tbaa !5
  %329 = bitcast i32* %l_3473 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %329) #1
  store i32 2, i32* %l_3473, align 4, !tbaa !1
  %330 = bitcast i32* %l_3481 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %330) #1
  store i32 -8, i32* %l_3481, align 4, !tbaa !1
  %331 = bitcast i32* %l_3483 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %331) #1
  store i32 489772637, i32* %l_3483, align 4, !tbaa !1
  %332 = bitcast i16* %l_3485 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %332) #1
  store i16 -1, i16* %l_3485, align 2, !tbaa !10
  %333 = bitcast [9 x [6 x [4 x i64]]]* %l_3492 to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %333) #1
  %334 = bitcast [9 x [6 x [4 x i64]]]* %l_3492 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %334, i8* bitcast ([9 x [6 x [4 x i64]]]* @func_1.l_3492 to i8*), i64 1728, i32 16, i1 false)
  %335 = bitcast [6 x [8 x i32]]* %l_3493 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %335) #1
  %336 = bitcast [6 x [8 x i32]]* %l_3493 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %336, i8* bitcast ([6 x [8 x i32]]* @func_1.l_3493 to i8*), i64 192, i32 16, i1 false)
  %337 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %337) #1
  %338 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %338) #1
  %339 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %339) #1
  %340 = load i16, i16* %l_3455, align 2, !tbaa !10
  %341 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext 1, i16 zeroext %340)
  %342 = zext i16 %341 to i32
  %343 = load i32*, i32** @g_2592, align 8, !tbaa !5
  %344 = load volatile i32, i32* %343, align 4, !tbaa !1
  %345 = xor i32 %344, %342
  store volatile i32 %345, i32* %343, align 4, !tbaa !1
  %346 = load i32*, i32** %l_3457, align 8, !tbaa !5
  %347 = icmp eq i32* null, %346
  %348 = zext i1 %347 to i32
  %349 = load i32*, i32** @g_2592, align 8, !tbaa !5
  store volatile i32 %348, i32* %349, align 4, !tbaa !1
  %350 = load i32*, i32** @g_2592, align 8, !tbaa !5
  %351 = load volatile i32, i32* %350, align 4, !tbaa !1
  store volatile i32 %351, i32* %350, align 4, !tbaa !1
  %352 = load i32, i32* %l_3458, align 4, !tbaa !1
  %353 = load i32*, i32** @g_672, align 8, !tbaa !5
  %354 = load i32, i32* %353, align 4, !tbaa !1
  %355 = getelementptr inbounds %struct.S0, %struct.S0* %l_13, i32 0, i32 1
  %356 = bitcast i24* %355 to i32*
  %357 = load i32, i32* %356, align 8
  %358 = shl i32 %357, 12
  %359 = ashr i32 %358, 12
  %360 = trunc i32 %359 to i16
  %361 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %360)
  %362 = sext i16 %361 to i64
  %363 = load volatile i32**, i32*** @g_2920, align 8, !tbaa !5
  %364 = load i32*, i32** %363, align 8, !tbaa !5
  %365 = load i32, i32* %364, align 4, !tbaa !1
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %368, label %367

; <label>:367                                     ; preds = %325
  br label %368

; <label>:368                                     ; preds = %367, %325
  %369 = phi i1 [ true, %325 ], [ true, %367 ]
  %370 = zext i1 %369 to i32
  %371 = getelementptr inbounds [6 x i32], [6 x i32]* %l_3451, i32 0, i64 4
  store i32 %370, i32* %371, align 4, !tbaa !1
  %372 = sext i32 %370 to i64
  %373 = call i64 @safe_sub_func_uint64_t_u_u(i64 %362, i64 %372)
  %374 = load i32, i32* %l_3422, align 4, !tbaa !1
  %375 = load i32, i32* %l_3352, align 4, !tbaa !1
  %376 = icmp ne i32 %374, %375
  %377 = zext i1 %376 to i32
  %378 = getelementptr inbounds [10 x [3 x [1 x i32]]], [10 x [3 x [1 x i32]]]* %l_3305, i32 0, i64 8
  %379 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %378, i32 0, i64 0
  %380 = getelementptr inbounds [1 x i32], [1 x i32]* %379, i32 0, i64 0
  %381 = load i32, i32* %380, align 4, !tbaa !1
  %382 = icmp sle i32 %377, %381
  %383 = zext i1 %382 to i32
  %384 = sext i32 %383 to i64
  %385 = icmp eq i64 7, %384
  %386 = zext i1 %385 to i32
  %387 = sext i32 %386 to i64
  %388 = icmp ne i64 %373, %387
  %389 = zext i1 %388 to i32
  %390 = sext i32 %389 to i64
  %391 = icmp sgt i64 -6, %390
  %392 = zext i1 %391 to i32
  %393 = icmp ult i32 %354, %392
  %394 = zext i1 %393 to i32
  %395 = icmp eq i32 %352, %394
  %396 = zext i1 %395 to i32
  %397 = load i32**, i32*** @g_2373, align 8, !tbaa !5
  %398 = load i32*, i32** %397, align 8, !tbaa !5
  store i32 %396, i32* %398, align 4, !tbaa !1
  br i1 %395, label %399, label %562

; <label>:399                                     ; preds = %368
  %400 = bitcast i64* %l_3466 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %400) #1
  store i64 6, i64* %l_3466, align 8, !tbaa !7
  %401 = bitcast i32* %l_3467 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %401) #1
  store i32 8, i32* %l_3467, align 4, !tbaa !1
  %402 = bitcast i32* %l_3468 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %402) #1
  store i32 -4, i32* %l_3468, align 4, !tbaa !1
  %403 = bitcast i32* %l_3476 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %403) #1
  store i32 -510973761, i32* %l_3476, align 4, !tbaa !1
  %404 = bitcast i32* %l_3477 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %404) #1
  store i32 727884456, i32* %l_3477, align 4, !tbaa !1
  %405 = bitcast i32* %l_3478 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %405) #1
  store i32 7, i32* %l_3478, align 4, !tbaa !1
  store i32 0, i32* @g_239, align 4, !tbaa !1
  br label %406

; <label>:406                                     ; preds = %434, %399
  %407 = load i32, i32* @g_239, align 4, !tbaa !1
  %408 = icmp sle i32 %407, 0
  br i1 %408, label %409, label %437

; <label>:409                                     ; preds = %406
  %410 = bitcast [3 x i32*]* %l_3464 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %410) #1
  %411 = bitcast i64* %l_3471 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %411) #1
  store i64 0, i64* %l_3471, align 8, !tbaa !7
  %412 = bitcast i32*** %l_3488 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %412) #1
  store i32** @g_905, i32*** %l_3488, align 8, !tbaa !5
  %413 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %413) #1
  store i32 0, i32* %i10, align 4, !tbaa !1
  br label %414

; <label>:414                                     ; preds = %421, %409
  %415 = load i32, i32* %i10, align 4, !tbaa !1
  %416 = icmp slt i32 %415, 3
  br i1 %416, label %417, label %424

; <label>:417                                     ; preds = %414
  %418 = load i32, i32* %i10, align 4, !tbaa !1
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [3 x i32*], [3 x i32*]* %l_3464, i32 0, i64 %419
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_2, i32 0, i64 4), i32** %420, align 8, !tbaa !5
  br label %421

; <label>:421                                     ; preds = %417
  %422 = load i32, i32* %i10, align 4, !tbaa !1
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %i10, align 4, !tbaa !1
  br label %414

; <label>:424                                     ; preds = %414
  %425 = load i16, i16* %l_3485, align 2, !tbaa !10
  %426 = add i16 %425, -1
  store i16 %426, i16* %l_3485, align 2, !tbaa !10
  %427 = load volatile i32**, i32*** @g_2466, align 8, !tbaa !5
  %428 = load i32*, i32** %427, align 8, !tbaa !5
  %429 = load i32**, i32*** %l_3488, align 8, !tbaa !5
  store i32* %428, i32** %429, align 8, !tbaa !5
  %430 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
  %431 = bitcast i32*** %l_3488 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %431) #1
  %432 = bitcast i64* %l_3471 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %432) #1
  %433 = bitcast [3 x i32*]* %l_3464 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %433) #1
  br label %434

; <label>:434                                     ; preds = %424
  %435 = load i32, i32* @g_239, align 4, !tbaa !1
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* @g_239, align 4, !tbaa !1
  br label %406

; <label>:437                                     ; preds = %406
  store i32 0, i32* %l_3411, align 4, !tbaa !1
  br label %438

; <label>:438                                     ; preds = %552, %437
  %439 = load i32, i32* %l_3411, align 4, !tbaa !1
  %440 = icmp ule i32 %439, 0
  br i1 %440, label %441, label %555

; <label>:441                                     ; preds = %438
  %442 = bitcast i32** %l_3489 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %442) #1
  %443 = getelementptr inbounds [10 x [3 x [1 x i32]]], [10 x [3 x [1 x i32]]]* %l_3305, i32 0, i64 8
  %444 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %443, i32 0, i64 0
  %445 = getelementptr inbounds [1 x i32], [1 x i32]* %444, i32 0, i64 0
  store i32* %445, i32** %l_3489, align 8, !tbaa !5
  %446 = bitcast i32** %l_3490 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %446) #1
  %447 = getelementptr inbounds [10 x [3 x [1 x i32]]], [10 x [3 x [1 x i32]]]* %l_3305, i32 0, i64 8
  %448 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %447, i32 0, i64 0
  %449 = getelementptr inbounds [1 x i32], [1 x i32]* %448, i32 0, i64 0
  store i32* %449, i32** %l_3490, align 8, !tbaa !5
  %450 = bitcast [10 x [7 x i32*]]* %l_3491 to i8*
  call void @llvm.lifetime.start(i64 560, i8* %450) #1
  %451 = getelementptr inbounds [10 x [7 x i32*]], [10 x [7 x i32*]]* %l_3491, i64 0, i64 0
  %452 = getelementptr inbounds [7 x i32*], [7 x i32*]* %451, i64 0, i64 0
  store i32* %l_3473, i32** %452, !tbaa !5
  %453 = getelementptr inbounds i32*, i32** %452, i64 1
  store i32* @g_239, i32** %453, !tbaa !5
  %454 = getelementptr inbounds i32*, i32** %453, i64 1
  store i32* %l_3476, i32** %454, !tbaa !5
  %455 = getelementptr inbounds i32*, i32** %454, i64 1
  store i32* @g_239, i32** %455, !tbaa !5
  %456 = getelementptr inbounds i32*, i32** %455, i64 1
  store i32* %l_3473, i32** %456, !tbaa !5
  %457 = getelementptr inbounds i32*, i32** %456, i64 1
  store i32* null, i32** %457, !tbaa !5
  %458 = getelementptr inbounds i32*, i32** %457, i64 1
  store i32* %l_3465, i32** %458, !tbaa !5
  %459 = getelementptr inbounds [7 x i32*], [7 x i32*]* %451, i64 1
  %460 = getelementptr inbounds [7 x i32*], [7 x i32*]* %459, i64 0, i64 0
  store i32* null, i32** %460, !tbaa !5
  %461 = getelementptr inbounds i32*, i32** %460, i64 1
  store i32* null, i32** %461, !tbaa !5
  %462 = getelementptr inbounds i32*, i32** %461, i64 1
  store i32* %l_3476, i32** %462, !tbaa !5
  %463 = getelementptr inbounds i32*, i32** %462, i64 1
  store i32* %l_3477, i32** %463, !tbaa !5
  %464 = getelementptr inbounds i32*, i32** %463, i64 1
  store i32* %l_3473, i32** %464, !tbaa !5
  %465 = getelementptr inbounds i32*, i32** %464, i64 1
  store i32* %l_3465, i32** %465, !tbaa !5
  %466 = getelementptr inbounds i32*, i32** %465, i64 1
  store i32* %l_3473, i32** %466, !tbaa !5
  %467 = getelementptr inbounds [7 x i32*], [7 x i32*]* %459, i64 1
  %468 = getelementptr inbounds [7 x i32*], [7 x i32*]* %467, i64 0, i64 0
  store i32* %l_3476, i32** %468, !tbaa !5
  %469 = getelementptr inbounds i32*, i32** %468, i64 1
  store i32* %l_3469, i32** %469, !tbaa !5
  %470 = getelementptr inbounds i32*, i32** %469, i64 1
  store i32* %l_3469, i32** %470, !tbaa !5
  %471 = getelementptr inbounds i32*, i32** %470, i64 1
  store i32* %l_3476, i32** %471, !tbaa !5
  %472 = getelementptr inbounds i32*, i32** %471, i64 1
  store i32* %l_3465, i32** %472, !tbaa !5
  %473 = getelementptr inbounds i32*, i32** %472, i64 1
  store i32* null, i32** %473, !tbaa !5
  %474 = getelementptr inbounds i32*, i32** %473, i64 1
  store i32* %l_3473, i32** %474, !tbaa !5
  %475 = getelementptr inbounds [7 x i32*], [7 x i32*]* %467, i64 1
  %476 = getelementptr inbounds [7 x i32*], [7 x i32*]* %475, i64 0, i64 0
  store i32* %l_3473, i32** %476, !tbaa !5
  %477 = getelementptr inbounds i32*, i32** %476, i64 1
  store i32* null, i32** %477, !tbaa !5
  %478 = getelementptr inbounds i32*, i32** %477, i64 1
  store i32* %l_3465, i32** %478, !tbaa !5
  %479 = getelementptr inbounds i32*, i32** %478, i64 1
  store i32* %l_3476, i32** %479, !tbaa !5
  %480 = getelementptr inbounds i32*, i32** %479, i64 1
  store i32* %l_3469, i32** %480, !tbaa !5
  %481 = getelementptr inbounds i32*, i32** %480, i64 1
  store i32* %l_3469, i32** %481, !tbaa !5
  %482 = getelementptr inbounds i32*, i32** %481, i64 1
  store i32* %l_3476, i32** %482, !tbaa !5
  %483 = getelementptr inbounds [7 x i32*], [7 x i32*]* %475, i64 1
  %484 = getelementptr inbounds [7 x i32*], [7 x i32*]* %483, i64 0, i64 0
  store i32* null, i32** %484, !tbaa !5
  %485 = getelementptr inbounds i32*, i32** %484, i64 1
  store i32* @g_2581, i32** %485, !tbaa !5
  %486 = getelementptr inbounds i32*, i32** %485, i64 1
  store i32* null, i32** %486, !tbaa !5
  %487 = getelementptr inbounds i32*, i32** %486, i64 1
  store i32* null, i32** %487, !tbaa !5
  %488 = getelementptr inbounds i32*, i32** %487, i64 1
  store i32* @g_239, i32** %488, !tbaa !5
  %489 = getelementptr inbounds i32*, i32** %488, i64 1
  %490 = load i8, i8* @g_42, align 1, !tbaa !9
  %491 = sext i8 %490 to i64
  %492 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1756, i32 0, i64 %491
  store i32* %492, i32** %489, !tbaa !5
  %493 = getelementptr inbounds i32*, i32** %489, i64 1
  store i32* %l_3473, i32** %493, !tbaa !5
  %494 = getelementptr inbounds [7 x i32*], [7 x i32*]* %483, i64 1
  %495 = getelementptr inbounds [7 x i32*], [7 x i32*]* %494, i64 0, i64 0
  store i32* @g_2581, i32** %495, !tbaa !5
  %496 = getelementptr inbounds i32*, i32** %495, i64 1
  store i32* null, i32** %496, !tbaa !5
  %497 = getelementptr inbounds i32*, i32** %496, i64 1
  store i32* null, i32** %497, !tbaa !5
  %498 = getelementptr inbounds i32*, i32** %497, i64 1
  store i32* %l_3465, i32** %498, !tbaa !5
  %499 = getelementptr inbounds i32*, i32** %498, i64 1
  store i32* null, i32** %499, !tbaa !5
  %500 = getelementptr inbounds i32*, i32** %499, i64 1
  store i32* %l_3465, i32** %500, !tbaa !5
  %501 = getelementptr inbounds i32*, i32** %500, i64 1
  store i32* null, i32** %501, !tbaa !5
  %502 = getelementptr inbounds [7 x i32*], [7 x i32*]* %494, i64 1
  %503 = getelementptr inbounds [7 x i32*], [7 x i32*]* %502, i64 0, i64 0
  store i32* @g_239, i32** %503, !tbaa !5
  %504 = getelementptr inbounds i32*, i32** %503, i64 1
  store i32* @g_239, i32** %504, !tbaa !5
  %505 = getelementptr inbounds i32*, i32** %504, i64 1
  store i32* %l_3465, i32** %505, !tbaa !5
  %506 = getelementptr inbounds i32*, i32** %505, i64 1
  store i32* %l_3477, i32** %506, !tbaa !5
  %507 = getelementptr inbounds i32*, i32** %506, i64 1
  store i32* %l_3476, i32** %507, !tbaa !5
  %508 = getelementptr inbounds i32*, i32** %507, i64 1
  %509 = load i8, i8* @g_42, align 1, !tbaa !9
  %510 = sext i8 %509 to i64
  %511 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1756, i32 0, i64 %510
  store i32* %511, i32** %508, !tbaa !5
  %512 = getelementptr inbounds i32*, i32** %508, i64 1
  store i32* @g_2581, i32** %512, !tbaa !5
  %513 = getelementptr inbounds [7 x i32*], [7 x i32*]* %502, i64 1
  %514 = getelementptr inbounds [7 x i32*], [7 x i32*]* %513, i64 0, i64 0
  store i32* %l_3477, i32** %514, !tbaa !5
  %515 = getelementptr inbounds i32*, i32** %514, i64 1
  store i32* @g_239, i32** %515, !tbaa !5
  %516 = getelementptr inbounds i32*, i32** %515, i64 1
  store i32* %l_3469, i32** %516, !tbaa !5
  %517 = getelementptr inbounds i32*, i32** %516, i64 1
  %518 = load i8, i8* @g_42, align 1, !tbaa !9
  %519 = sext i8 %518 to i64
  %520 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1756, i32 0, i64 %519
  store i32* %520, i32** %517, !tbaa !5
  %521 = getelementptr inbounds i32*, i32** %517, i64 1
  %522 = load i8, i8* @g_42, align 1, !tbaa !9
  %523 = sext i8 %522 to i64
  %524 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1756, i32 0, i64 %523
  store i32* %524, i32** %521, !tbaa !5
  %525 = getelementptr inbounds i32*, i32** %521, i64 1
  store i32* %l_3469, i32** %525, !tbaa !5
  %526 = getelementptr inbounds i32*, i32** %525, i64 1
  store i32* @g_239, i32** %526, !tbaa !5
  %527 = getelementptr inbounds [7 x i32*], [7 x i32*]* %513, i64 1
  %528 = getelementptr inbounds [7 x i32*], [7 x i32*]* %527, i64 0, i64 0
  store i32* %l_3469, i32** %528, !tbaa !5
  %529 = getelementptr inbounds i32*, i32** %528, i64 1
  store i32* null, i32** %529, !tbaa !5
  %530 = getelementptr inbounds i32*, i32** %529, i64 1
  store i32* @g_239, i32** %530, !tbaa !5
  %531 = getelementptr inbounds i32*, i32** %530, i64 1
  store i32* null, i32** %531, !tbaa !5
  %532 = getelementptr inbounds i32*, i32** %531, i64 1
  store i32* %l_3476, i32** %532, !tbaa !5
  %533 = getelementptr inbounds i32*, i32** %532, i64 1
  store i32* null, i32** %533, !tbaa !5
  %534 = getelementptr inbounds i32*, i32** %533, i64 1
  store i32* %l_3477, i32** %534, !tbaa !5
  %535 = getelementptr inbounds [7 x i32*], [7 x i32*]* %527, i64 1
  %536 = getelementptr inbounds [7 x i32*], [7 x i32*]* %535, i64 0, i64 0
  store i32* %l_3469, i32** %536, !tbaa !5
  %537 = getelementptr inbounds i32*, i32** %536, i64 1
  store i32* @g_2581, i32** %537, !tbaa !5
  %538 = getelementptr inbounds i32*, i32** %537, i64 1
  store i32* null, i32** %538, !tbaa !5
  %539 = getelementptr inbounds i32*, i32** %538, i64 1
  store i32* @g_239, i32** %539, !tbaa !5
  %540 = getelementptr inbounds i32*, i32** %539, i64 1
  store i32* null, i32** %540, !tbaa !5
  %541 = getelementptr inbounds i32*, i32** %540, i64 1
  store i32* @g_2581, i32** %541, !tbaa !5
  %542 = getelementptr inbounds i32*, i32** %541, i64 1
  store i32* %l_3469, i32** %542, !tbaa !5
  %543 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %543) #1
  %544 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %544) #1
  %545 = load volatile i64, i64* @g_3495, align 8, !tbaa !7
  %546 = add i64 %545, 1
  store volatile i64 %546, i64* @g_3495, align 8, !tbaa !7
  %547 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #1
  %548 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #1
  %549 = bitcast [10 x [7 x i32*]]* %l_3491 to i8*
  call void @llvm.lifetime.end(i64 560, i8* %549) #1
  %550 = bitcast i32** %l_3490 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %550) #1
  %551 = bitcast i32** %l_3489 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %551) #1
  br label %552

; <label>:552                                     ; preds = %441
  %553 = load i32, i32* %l_3411, align 4, !tbaa !1
  %554 = add i32 %553, 1
  store i32 %554, i32* %l_3411, align 4, !tbaa !1
  br label %438

; <label>:555                                     ; preds = %438
  %556 = bitcast i32* %l_3478 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %556) #1
  %557 = bitcast i32* %l_3477 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %557) #1
  %558 = bitcast i32* %l_3476 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %558) #1
  %559 = bitcast i32* %l_3468 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %559) #1
  %560 = bitcast i32* %l_3467 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %560) #1
  %561 = bitcast i64* %l_3466 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %561) #1
  br label %569

; <label>:562                                     ; preds = %368
  %563 = load volatile i32**, i32*** @g_1227, align 8, !tbaa !5
  %564 = load i32*, i32** %563, align 8, !tbaa !5
  %565 = load i32, i32* %564, align 4, !tbaa !1
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %568

; <label>:567                                     ; preds = %562
  store i32 30, i32* %2
  br label %570

; <label>:568                                     ; preds = %562
  br label %569

; <label>:569                                     ; preds = %568, %555
  store i32 0, i32* %2
  br label %570

; <label>:570                                     ; preds = %569, %567
  %571 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %571) #1
  %572 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %572) #1
  %573 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %573) #1
  %574 = bitcast [6 x [8 x i32]]* %l_3493 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %574) #1
  %575 = bitcast [9 x [6 x [4 x i64]]]* %l_3492 to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %575) #1
  %576 = bitcast i16* %l_3485 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %576) #1
  %577 = bitcast i32* %l_3483 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %577) #1
  %578 = bitcast i32* %l_3481 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %578) #1
  %579 = bitcast i32* %l_3473 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %579) #1
  %580 = bitcast i32** %l_3457 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %580) #1
  %581 = bitcast i16* %l_3455 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %581) #1
  %582 = bitcast i16* %l_3454 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %582) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %1139 [
    i32 0, label %583
    i32 30, label %589
  ]

; <label>:583                                     ; preds = %570
  br label %584

; <label>:584                                     ; preds = %583
  %585 = load i8, i8* @g_42, align 1, !tbaa !9
  %586 = sext i8 %585 to i32
  %587 = sub nsw i32 %586, 1
  %588 = trunc i32 %587 to i8
  store i8 %588, i8* @g_42, align 1, !tbaa !9
  br label %321

; <label>:589                                     ; preds = %570, %321
  %590 = load i16****, i16***** @g_3008, align 8, !tbaa !5
  %591 = load i16****, i16***** %l_3498, align 8, !tbaa !5
  store i16**** %591, i16***** %l_3501, align 8, !tbaa !5
  %592 = icmp ne i16**** %590, %591
  %593 = zext i1 %592 to i32
  %594 = load i32*, i32** @g_212, align 8, !tbaa !5
  store i32 %593, i32* %594, align 4, !tbaa !1
  %595 = getelementptr inbounds %struct.S0, %struct.S0* %l_13, i32 0, i32 1
  %596 = bitcast i24* %595 to i32*
  %597 = load i32, i32* %596, align 8
  %598 = and i32 %593, 1048575
  %599 = and i32 %597, -1048576
  %600 = or i32 %599, %598
  store i32 %600, i32* %596, align 8
  %601 = shl i32 %598, 12
  %602 = ashr i32 %601, 12
  store i32 0, i32* @g_986, align 4, !tbaa !1
  br label %603

; <label>:603                                     ; preds = %1060, %589
  %604 = load i32, i32* @g_986, align 4, !tbaa !1
  %605 = icmp ule i32 %604, 0
  br i1 %605, label %606, label %1063

; <label>:606                                     ; preds = %603
  %607 = bitcast i32* %l_3515 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %607) #1
  store i32 -1, i32* %l_3515, align 4, !tbaa !1
  %608 = bitcast i32* %l_3538 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %608) #1
  store i32 -1982533706, i32* %l_3538, align 4, !tbaa !1
  %609 = bitcast %struct.S0* %l_3574 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %609) #1
  %610 = bitcast %struct.S0* %l_3574 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %610, i8* bitcast ({ i64, i8, i8, i8 }* @func_1.l_3574 to i8*), i64 16, i32 8, i1 true)
  %611 = bitcast i32* %l_3575 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %611) #1
  store i32 6, i32* %l_3575, align 4, !tbaa !1
  %612 = bitcast [5 x [5 x [3 x i32]]]* %l_3589 to i8*
  call void @llvm.lifetime.start(i64 300, i8* %612) #1
  %613 = bitcast [5 x [5 x [3 x i32]]]* %l_3589 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %613, i8* bitcast ([5 x [5 x [3 x i32]]]* @func_1.l_3589 to i8*), i64 300, i32 16, i1 false)
  %614 = bitcast [4 x [4 x [10 x i32]]]* %l_3614 to i8*
  call void @llvm.lifetime.start(i64 640, i8* %614) #1
  %615 = bitcast [4 x [4 x [10 x i32]]]* %l_3614 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %615, i8* bitcast ([4 x [4 x [10 x i32]]]* @func_1.l_3614 to i8*), i64 640, i32 16, i1 false)
  %616 = bitcast [6 x [8 x i8*]]* %l_3615 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %616) #1
  %617 = bitcast [6 x [8 x i8*]]* %l_3615 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %617, i8* bitcast ([6 x [8 x i8*]]* @func_1.l_3615 to i8*), i64 384, i32 16, i1 false)
  %618 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %618) #1
  %619 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %619) #1
  %620 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %620) #1
  store i8 3, i8* @g_206, align 1, !tbaa !9
  br label %621

; <label>:621                                     ; preds = %676, %606
  %622 = load i8, i8* @g_206, align 1, !tbaa !9
  %623 = sext i8 %622 to i32
  %624 = icmp sge i32 %623, 0
  br i1 %624, label %625, label %681

; <label>:625                                     ; preds = %621
  %626 = bitcast [1 x i8]* %l_3507 to i8*
  call void @llvm.lifetime.start(i64 1, i8* %626) #1
  %627 = bitcast i8** %l_3508 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %627) #1
  store i8* @g_2463, i8** %l_3508, align 8, !tbaa !5
  %628 = bitcast i32* %l_3516 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %628) #1
  store i32 -1, i32* %l_3516, align 4, !tbaa !1
  %629 = bitcast i64**** %l_3526 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %629) #1
  store i64*** @g_1852, i64**** %l_3526, align 8, !tbaa !5
  %630 = bitcast [7 x i64****]* %l_3525 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %630) #1
  %631 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_3525, i64 0, i64 0
  store i64**** %l_3526, i64***** %631, !tbaa !5
  %632 = getelementptr inbounds i64****, i64***** %631, i64 1
  store i64**** %l_3526, i64***** %632, !tbaa !5
  %633 = getelementptr inbounds i64****, i64***** %632, i64 1
  store i64**** %l_3526, i64***** %633, !tbaa !5
  %634 = getelementptr inbounds i64****, i64***** %633, i64 1
  store i64**** %l_3526, i64***** %634, !tbaa !5
  %635 = getelementptr inbounds i64****, i64***** %634, i64 1
  store i64**** %l_3526, i64***** %635, !tbaa !5
  %636 = getelementptr inbounds i64****, i64***** %635, i64 1
  store i64**** %l_3526, i64***** %636, !tbaa !5
  %637 = getelementptr inbounds i64****, i64***** %636, i64 1
  store i64**** %l_3526, i64***** %637, !tbaa !5
  %638 = bitcast [9 x i64*****]* %l_3524 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %638) #1
  %639 = getelementptr inbounds [9 x i64*****], [9 x i64*****]* %l_3524, i64 0, i64 0
  %640 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_3525, i32 0, i64 1
  store i64***** %640, i64****** %639, !tbaa !5
  %641 = getelementptr inbounds i64*****, i64****** %639, i64 1
  %642 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_3525, i32 0, i64 1
  store i64***** %642, i64****** %641, !tbaa !5
  %643 = getelementptr inbounds i64*****, i64****** %641, i64 1
  %644 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_3525, i32 0, i64 1
  store i64***** %644, i64****** %643, !tbaa !5
  %645 = getelementptr inbounds i64*****, i64****** %643, i64 1
  %646 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_3525, i32 0, i64 1
  store i64***** %646, i64****** %645, !tbaa !5
  %647 = getelementptr inbounds i64*****, i64****** %645, i64 1
  %648 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_3525, i32 0, i64 1
  store i64***** %648, i64****** %647, !tbaa !5
  %649 = getelementptr inbounds i64*****, i64****** %647, i64 1
  %650 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_3525, i32 0, i64 1
  store i64***** %650, i64****** %649, !tbaa !5
  %651 = getelementptr inbounds i64*****, i64****** %649, i64 1
  %652 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_3525, i32 0, i64 1
  store i64***** %652, i64****** %651, !tbaa !5
  %653 = getelementptr inbounds i64*****, i64****** %651, i64 1
  %654 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_3525, i32 0, i64 1
  store i64***** %654, i64****** %653, !tbaa !5
  %655 = getelementptr inbounds i64*****, i64****** %653, i64 1
  %656 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_3525, i32 0, i64 1
  store i64***** %656, i64****** %655, !tbaa !5
  %657 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %657) #1
  store i32 0, i32* %i16, align 4, !tbaa !1
  br label %658

; <label>:658                                     ; preds = %665, %625
  %659 = load i32, i32* %i16, align 4, !tbaa !1
  %660 = icmp slt i32 %659, 1
  br i1 %660, label %661, label %668

; <label>:661                                     ; preds = %658
  %662 = load i32, i32* %i16, align 4, !tbaa !1
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [1 x i8], [1 x i8]* %l_3507, i32 0, i64 %663
  store i8 28, i8* %664, align 1, !tbaa !9
  br label %665

; <label>:665                                     ; preds = %661
  %666 = load i32, i32* %i16, align 4, !tbaa !1
  %667 = add nsw i32 %666, 1
  store i32 %667, i32* %i16, align 4, !tbaa !1
  br label %658

; <label>:668                                     ; preds = %658
  %669 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %669) #1
  %670 = bitcast [9 x i64*****]* %l_3524 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %670) #1
  %671 = bitcast [7 x i64****]* %l_3525 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %671) #1
  %672 = bitcast i64**** %l_3526 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %672) #1
  %673 = bitcast i32* %l_3516 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %673) #1
  %674 = bitcast i8** %l_3508 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %674) #1
  %675 = bitcast [1 x i8]* %l_3507 to i8*
  call void @llvm.lifetime.end(i64 1, i8* %675) #1
  br label %676

; <label>:676                                     ; preds = %668
  %677 = load i8, i8* @g_206, align 1, !tbaa !9
  %678 = sext i8 %677 to i32
  %679 = sub nsw i32 %678, 1
  %680 = trunc i32 %679 to i8
  store i8 %680, i8* @g_206, align 1, !tbaa !9
  br label %621

; <label>:681                                     ; preds = %621
  %682 = load i32, i32* %l_3422, align 4, !tbaa !1
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %685

; <label>:684                                     ; preds = %681
  store i32 42, i32* %2
  br label %1048

; <label>:685                                     ; preds = %681
  store i32 0, i32* %l_3515, align 4, !tbaa !1
  br label %686

; <label>:686                                     ; preds = %699, %685
  %687 = load i32, i32* %l_3515, align 4, !tbaa !1
  %688 = icmp sle i32 %687, 0
  br i1 %688, label %689, label %702

; <label>:689                                     ; preds = %686
  %690 = bitcast i32* %l_3571 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %690) #1
  store i32 -5, i32* %l_3571, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_3576) #1
  store i8 0, i8* %l_3576, align 1, !tbaa !9
  %691 = bitcast i32*** %l_3582 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %691) #1
  store i32** null, i32*** %l_3582, align 8, !tbaa !5
  %692 = load volatile i32**, i32*** @g_1227, align 8, !tbaa !5
  %693 = load i32*, i32** %692, align 8, !tbaa !5
  %694 = load i32, i32* %693, align 4, !tbaa !1
  %695 = load i32**, i32*** @g_2373, align 8, !tbaa !5
  %696 = load i32*, i32** %695, align 8, !tbaa !5
  store i32 %694, i32* %696, align 4, !tbaa !1
  %697 = bitcast i32*** %l_3582 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %697) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3576) #1
  %698 = bitcast i32* %l_3571 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %698) #1
  br label %699

; <label>:699                                     ; preds = %689
  %700 = load i32, i32* %l_3515, align 4, !tbaa !1
  %701 = add nsw i32 %700, 1
  store i32 %701, i32* %l_3515, align 4, !tbaa !1
  br label %686

; <label>:702                                     ; preds = %686
  %703 = getelementptr inbounds [6 x i32], [6 x i32]* %l_3451, i32 0, i64 4
  %704 = load i32, i32* %703, align 4, !tbaa !1
  %705 = load i32, i32* %l_3465, align 4, !tbaa !1
  %706 = getelementptr inbounds [10 x [3 x [1 x i32]]], [10 x [3 x [1 x i32]]]* %l_3305, i32 0, i64 8
  %707 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %706, i32 0, i64 0
  %708 = getelementptr inbounds [1 x i32], [1 x i32]* %707, i32 0, i64 0
  %709 = load i32, i32* %708, align 4, !tbaa !1
  %710 = icmp slt i32 %705, %709
  %711 = zext i1 %710 to i32
  %712 = trunc i32 %711 to i8
  %713 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %712, i32 7)
  %714 = getelementptr inbounds [5 x [5 x [3 x i32]]], [5 x [5 x [3 x i32]]]* %l_3589, i32 0, i64 1
  %715 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* %714, i32 0, i64 2
  %716 = getelementptr inbounds [3 x i32], [3 x i32]* %715, i32 0, i64 0
  %717 = load i32, i32* %716, align 4, !tbaa !1
  %718 = icmp ne i32 %717, 0
  %719 = xor i1 %718, true
  %720 = zext i1 %719 to i32
  %721 = getelementptr inbounds [4 x [4 x [10 x i32]]], [4 x [4 x [10 x i32]]]* %l_3614, i32 0, i64 1
  %722 = getelementptr inbounds [4 x [10 x i32]], [4 x [10 x i32]]* %721, i32 0, i64 3
  %723 = getelementptr inbounds [10 x i32], [10 x i32]* %722, i32 0, i64 0
  %724 = load i32, i32* %723, align 4, !tbaa !1
  %725 = trunc i32 %724 to i8
  %726 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %725, i8 zeroext -72)
  %727 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %726, i32 0)
  %728 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext 110, i8 signext %727)
  %729 = sext i8 %728 to i16
  %730 = load volatile i16**, i16*** @g_741, align 8, !tbaa !5
  %731 = load i16*, i16** %730, align 8, !tbaa !5
  %732 = load volatile i16, i16* %731, align 2, !tbaa !10
  %733 = sext i16 %732 to i32
  %734 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %729, i32 %733)
  %735 = sext i16 %734 to i32
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %740, label %737

; <label>:737                                     ; preds = %702
  %738 = load i32, i32* %l_3472, align 4, !tbaa !1
  %739 = icmp ne i32 %738, 0
  br label %740

; <label>:740                                     ; preds = %737, %702
  %741 = phi i1 [ true, %702 ], [ %739, %737 ]
  %742 = zext i1 %741 to i32
  %743 = sext i32 %742 to i64
  %744 = icmp ne i64 65526, %743
  br i1 %744, label %745, label %746

; <label>:745                                     ; preds = %740
  br label %746

; <label>:746                                     ; preds = %745, %740
  %747 = phi i1 [ false, %740 ], [ false, %745 ]
  %748 = zext i1 %747 to i32
  %749 = sext i32 %748 to i64
  %750 = call i64 @safe_add_func_uint64_t_u_u(i64 %749, i64 -2)
  %751 = trunc i64 %750 to i16
  %752 = getelementptr inbounds [6 x i32], [6 x i32]* %l_3451, i32 0, i64 4
  %753 = load i32, i32* %752, align 4, !tbaa !1
  %754 = trunc i32 %753 to i16
  %755 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %751, i16 signext %754)
  %756 = sext i16 %755 to i32
  %757 = load i32, i32* %l_3411, align 4, !tbaa !1
  %758 = icmp ult i32 %756, %757
  %759 = zext i1 %758 to i32
  %760 = trunc i32 %759 to i8
  %761 = load i32, i32* %l_3352, align 4, !tbaa !1
  %762 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %760, i32 %761)
  %763 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %762, i32 82)
  %764 = zext i8 %763 to i32
  %765 = getelementptr inbounds [10 x i32], [10 x i32]* %l_3579, i32 0, i64 1
  %766 = load i32, i32* %765, align 4, !tbaa !1
  %767 = icmp uge i32 %764, %766
  %768 = zext i1 %767 to i32
  %769 = sext i32 %768 to i64
  %770 = icmp slt i64 20907, %769
  %771 = zext i1 %770 to i32
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* @g_2463, align 1, !tbaa !9
  %773 = zext i8 %772 to i32
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %776

; <label>:775                                     ; preds = %746
  br label %776

; <label>:776                                     ; preds = %775, %746
  %777 = phi i1 [ false, %746 ], [ true, %775 ]
  %778 = zext i1 %777 to i32
  %779 = trunc i32 %778 to i16
  %780 = getelementptr inbounds [6 x i32], [6 x i32]* %l_3451, i32 0, i64 4
  %781 = load i32, i32* %780, align 4, !tbaa !1
  %782 = trunc i32 %781 to i16
  %783 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %779, i16 zeroext %782)
  %784 = zext i16 %783 to i64
  %785 = icmp sle i64 %784, 38856
  %786 = zext i1 %785 to i32
  %787 = trunc i32 %786 to i16
  %788 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %787, i32 0)
  %789 = sext i16 %788 to i32
  %790 = xor i32 %720, %789
  %791 = getelementptr inbounds [5 x i32], [5 x i32]* %l_3518, i32 0, i64 4
  %792 = load i32, i32* %791, align 4, !tbaa !1
  %793 = or i32 %790, %792
  %794 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %713, i32 %793)
  %795 = sext i8 %794 to i32
  store i32 %795, i32* %l_3538, align 4, !tbaa !1
  %796 = load i32, i32* @g_319, align 4, !tbaa !1
  %797 = and i32 %795, %796
  %798 = load i32, i32* %l_3538, align 4, !tbaa !1
  %799 = icmp sge i32 %704, %798
  %800 = zext i1 %799 to i32
  %801 = sext i32 %800 to i64
  %802 = icmp eq i64 4139700852, %801
  %803 = zext i1 %802 to i32
  store i32 %803, i32* %l_3422, align 4, !tbaa !1
  store i32 0, i32* %l_3411, align 4, !tbaa !1
  br label %804

; <label>:804                                     ; preds = %1044, %776
  %805 = load i32, i32* %l_3411, align 4, !tbaa !1
  %806 = icmp ule i32 %805, 0
  br i1 %806, label %807, label %1047

; <label>:807                                     ; preds = %804
  %808 = bitcast [6 x i16]* %l_3617 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %808) #1
  %809 = bitcast [6 x i16]* %l_3617 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %809, i8* bitcast ([6 x i16]* @func_1.l_3617 to i8*), i64 12, i32 2, i1 false)
  %810 = bitcast i32* %l_3626 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %810) #1
  store i32 -2120983360, i32* %l_3626, align 4, !tbaa !1
  %811 = bitcast i32* %l_3627 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %811) #1
  store i32 0, i32* %l_3627, align 4, !tbaa !1
  %812 = bitcast i32** %l_3649 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %812) #1
  store i32* getelementptr inbounds ([10 x [8 x [3 x i32]]], [10 x [8 x [3 x i32]]]* @g_2586, i32 0, i64 9, i64 5, i64 2), i32** %l_3649, align 8, !tbaa !5
  %813 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %813) #1
  %814 = getelementptr inbounds [6 x [3 x i32**]], [6 x [3 x i32**]]* %l_3616, i32 0, i64 2
  %815 = getelementptr inbounds [3 x i32**], [3 x i32**]* %814, i32 0, i64 1
  %816 = load i32**, i32*** %815, align 8, !tbaa !5
  %817 = icmp eq i32** null, %816
  br i1 %817, label %818, label %824

; <label>:818                                     ; preds = %807
  %819 = getelementptr inbounds %struct.S0, %struct.S0* %l_13, i32 0, i32 1
  %820 = bitcast i24* %819 to i32*
  %821 = load i32, i32* %820, align 8
  %822 = shl i32 %821, 12
  %823 = ashr i32 %822, 12
  store i32 %823, i32* %1
  store i32 1, i32* %2
  br label %1037

; <label>:824                                     ; preds = %807
  %825 = load i32*, i32** @g_212, align 8, !tbaa !5
  %826 = load i32, i32* %825, align 4, !tbaa !1
  %827 = sext i32 %826 to i64
  %828 = xor i64 %827, 422768643
  %829 = trunc i64 %828 to i32
  store i32 %829, i32* %825, align 4, !tbaa !1
  br label %830

; <label>:830                                     ; preds = %824
  store i32 0, i32* %l_3575, align 4, !tbaa !1
  br label %831

; <label>:831                                     ; preds = %966, %830
  %832 = load i32, i32* %l_3575, align 4, !tbaa !1
  %833 = icmp sge i32 %832, 0
  br i1 %833, label %834, label %969

; <label>:834                                     ; preds = %831
  %835 = bitcast i32** %l_3618 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %835) #1
  store i32* %l_3470, i32** %l_3618, align 8, !tbaa !5
  %836 = bitcast i32** %l_3619 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %836) #1
  store i32* %l_3469, i32** %l_3619, align 8, !tbaa !5
  %837 = bitcast i32** %l_3620 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %837) #1
  store i32* %l_3465, i32** %l_3620, align 8, !tbaa !5
  %838 = bitcast [4 x [2 x i32*]]* %l_3621 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %838) #1
  %839 = getelementptr inbounds [4 x [2 x i32*]], [4 x [2 x i32*]]* %l_3621, i64 0, i64 0
  %840 = getelementptr inbounds [2 x i32*], [2 x i32*]* %839, i64 0, i64 0
  store i32* %l_3470, i32** %840, !tbaa !5
  %841 = getelementptr inbounds i32*, i32** %840, i64 1
  store i32* %l_3470, i32** %841, !tbaa !5
  %842 = getelementptr inbounds [2 x i32*], [2 x i32*]* %839, i64 1
  %843 = getelementptr inbounds [2 x i32*], [2 x i32*]* %842, i64 0, i64 0
  store i32* %l_3470, i32** %843, !tbaa !5
  %844 = getelementptr inbounds i32*, i32** %843, i64 1
  store i32* %l_3470, i32** %844, !tbaa !5
  %845 = getelementptr inbounds [2 x i32*], [2 x i32*]* %842, i64 1
  %846 = getelementptr inbounds [2 x i32*], [2 x i32*]* %845, i64 0, i64 0
  store i32* %l_3470, i32** %846, !tbaa !5
  %847 = getelementptr inbounds i32*, i32** %846, i64 1
  store i32* %l_3470, i32** %847, !tbaa !5
  %848 = getelementptr inbounds [2 x i32*], [2 x i32*]* %845, i64 1
  %849 = getelementptr inbounds [2 x i32*], [2 x i32*]* %848, i64 0, i64 0
  store i32* %l_3470, i32** %849, !tbaa !5
  %850 = getelementptr inbounds i32*, i32** %849, i64 1
  store i32* %l_3470, i32** %850, !tbaa !5
  %851 = bitcast i8*** %l_3641 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %851) #1
  store i8** getelementptr inbounds ([3 x [8 x i8*]], [3 x [8 x i8*]]* @g_1312, i32 0, i64 0, i64 0), i8*** %l_3641, align 8, !tbaa !5
  %852 = bitcast i32* %l_3643 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %852) #1
  store i32 9, i32* %l_3643, align 4, !tbaa !1
  %853 = bitcast i32* %l_3644 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %853) #1
  store i32 -1, i32* %l_3644, align 4, !tbaa !1
  %854 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %854) #1
  %855 = bitcast i32* %j19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %855) #1
  %856 = load i8, i8* %l_3622, align 1, !tbaa !9
  %857 = add i8 %856, -1
  store i8 %857, i8* %l_3622, align 1, !tbaa !9
  %858 = load i32, i32* @g_3628, align 4, !tbaa !1
  %859 = add i32 %858, 1
  store i32 %859, i32* @g_3628, align 4, !tbaa !1
  %860 = load i8, i8* %l_3320, align 1, !tbaa !9
  %861 = zext i8 %860 to i64
  %862 = getelementptr inbounds [6 x i32], [6 x i32]* %l_3451, i32 0, i64 1
  %863 = load i32, i32* %862, align 4, !tbaa !1
  %864 = sext i32 %863 to i64
  %865 = load i64, i64* %l_3631, align 8, !tbaa !7
  %866 = and i64 %864, %865
  %867 = load i8**, i8*** @g_3026, align 8, !tbaa !5
  %868 = load i8*, i8** %867, align 8, !tbaa !5
  %869 = load i32*, i32** @g_905, align 8, !tbaa !5
  %870 = load i32, i32* %869, align 4, !tbaa !1
  %871 = load i32*, i32** %l_3618, align 8, !tbaa !5
  %872 = load i32, i32* %871, align 4, !tbaa !1
  %873 = or i32 %872, %870
  store i32 %873, i32* %871, align 4, !tbaa !1
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %922, label %875

; <label>:875                                     ; preds = %834
  %876 = load i64**, i64*** %l_3638, align 8, !tbaa !5
  %877 = icmp ne i64** %876, null
  %878 = zext i1 %877 to i32
  %879 = trunc i32 %878 to i16
  %880 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %879, i32 11)
  %881 = zext i16 %880 to i32
  %882 = getelementptr inbounds [4 x [4 x [10 x i32]]], [4 x [4 x [10 x i32]]]* %l_3614, i32 0, i64 1
  %883 = getelementptr inbounds [4 x [10 x i32]], [4 x [10 x i32]]* %882, i32 0, i64 3
  %884 = getelementptr inbounds [10 x i32], [10 x i32]* %883, i32 0, i64 0
  %885 = load i32, i32* %884, align 4, !tbaa !1
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds %struct.S0, %struct.S0* %l_3574, i32 0, i32 0
  %888 = load volatile i64, i64* %887, align 8, !tbaa !12
  %889 = icmp ugt i64 %886, %888
  %890 = zext i1 %889 to i32
  %891 = sext i32 %890 to i64
  %892 = load i64**, i64*** %l_3547, align 8, !tbaa !5
  %893 = load i64*, i64** %892, align 8, !tbaa !5
  %894 = load i64, i64* %893, align 8, !tbaa !7
  %895 = or i64 %894, %891
  store i64 %895, i64* %893, align 8, !tbaa !7
  %896 = load i8***, i8**** @g_2533, align 8, !tbaa !5
  %897 = load i8**, i8*** %896, align 8, !tbaa !5
  %898 = load i8**, i8*** %l_3641, align 8, !tbaa !5
  %899 = icmp ne i8** %897, %898
  %900 = zext i1 %899 to i32
  %901 = load i8**, i8*** @g_3026, align 8, !tbaa !5
  %902 = load i8*, i8** %901, align 8, !tbaa !5
  %903 = load i8, i8* %902, align 1, !tbaa !9
  %904 = sext i8 %903 to i32
  %905 = xor i32 %900, %904
  %906 = load i32, i32* %l_3627, align 4, !tbaa !1
  %907 = icmp eq i32 %905, %906
  %908 = zext i1 %907 to i32
  %909 = load i32, i32* %l_3480, align 4, !tbaa !1
  %910 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 89, i32 %909)
  %911 = sext i8 %910 to i32
  %912 = icmp eq i32 %881, %911
  %913 = zext i1 %912 to i32
  %914 = load i16*, i16** @g_560, align 8, !tbaa !5
  %915 = load i16, i16* %914, align 2, !tbaa !10
  %916 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %915, i16 zeroext 0)
  %917 = zext i16 %916 to i64
  %918 = load i32, i32* %l_3517, align 4, !tbaa !1
  %919 = sext i32 %918 to i64
  %920 = call i64 @safe_sub_func_uint64_t_u_u(i64 %917, i64 %919)
  %921 = icmp ne i64 %920, 0
  br label %922

; <label>:922                                     ; preds = %875, %834
  %923 = phi i1 [ true, %834 ], [ %921, %875 ]
  %924 = zext i1 %923 to i32
  store i32 %924, i32* %l_3515, align 4, !tbaa !1
  %925 = load i8**, i8*** %l_3641, align 8, !tbaa !5
  %926 = load i8*, i8** %925, align 8, !tbaa !5
  store i8* %926, i8** %l_3642, align 8, !tbaa !5
  %927 = load i8**, i8*** %l_3641, align 8, !tbaa !5
  store i8* %926, i8** %927, align 8, !tbaa !5
  %928 = icmp eq i8* %868, %926
  %929 = zext i1 %928 to i32
  %930 = sext i32 %929 to i64
  %931 = icmp ne i64 %930, 7
  %932 = zext i1 %931 to i32
  %933 = load i32, i32* %l_3643, align 4, !tbaa !1
  %934 = icmp ne i32 %932, %933
  %935 = zext i1 %934 to i32
  %936 = load i32, i32* %l_3352, align 4, !tbaa !1
  %937 = icmp eq i32 %935, %936
  %938 = zext i1 %937 to i32
  %939 = load i32, i32* %l_3627, align 4, !tbaa !1
  %940 = icmp ne i32 %938, %939
  %941 = zext i1 %940 to i32
  %942 = load i32*, i32** @g_672, align 8, !tbaa !5
  store i32 %941, i32* %942, align 4, !tbaa !1
  %943 = load i32, i32* %l_3644, align 4, !tbaa !1
  %944 = icmp uge i32 %941, %943
  %945 = zext i1 %944 to i32
  %946 = sext i32 %945 to i64
  %947 = icmp sle i64 %866, %946
  %948 = zext i1 %947 to i32
  %949 = icmp ult i64 %861, 0
  %950 = zext i1 %949 to i32
  %951 = load i32, i32* %l_3538, align 4, !tbaa !1
  %952 = or i32 %951, %950
  store i32 %952, i32* %l_3538, align 4, !tbaa !1
  %953 = load i32, i32* %l_3479, align 4, !tbaa !1
  %954 = load i32*, i32** @g_2592, align 8, !tbaa !5
  %955 = load volatile i32, i32* %954, align 4, !tbaa !1
  %956 = xor i32 %955, %953
  store volatile i32 %956, i32* %954, align 4, !tbaa !1
  %957 = bitcast i32* %j19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %957) #1
  %958 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %958) #1
  %959 = bitcast i32* %l_3644 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %959) #1
  %960 = bitcast i32* %l_3643 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %960) #1
  %961 = bitcast i8*** %l_3641 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %961) #1
  %962 = bitcast [4 x [2 x i32*]]* %l_3621 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %962) #1
  %963 = bitcast i32** %l_3620 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %963) #1
  %964 = bitcast i32** %l_3619 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %964) #1
  %965 = bitcast i32** %l_3618 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %965) #1
  br label %966

; <label>:966                                     ; preds = %922
  %967 = load i32, i32* %l_3575, align 4, !tbaa !1
  %968 = sub nsw i32 %967, 1
  store i32 %968, i32* %l_3575, align 4, !tbaa !1
  br label %831

; <label>:969                                     ; preds = %831
  %970 = load i32*, i32** %l_3649, align 8, !tbaa !5
  %971 = getelementptr inbounds [6 x i32], [6 x i32]* %l_3451, i32 0, i64 4
  %972 = load i32, i32* %971, align 4, !tbaa !1
  %973 = sext i32 %972 to i64
  %974 = icmp ne i64 -6, %973
  %975 = zext i1 %974 to i32
  %976 = getelementptr inbounds [5 x [5 x [3 x i32]]], [5 x [5 x [3 x i32]]]* %l_3589, i32 0, i64 4
  %977 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* %976, i32 0, i64 0
  %978 = getelementptr inbounds [3 x i32], [3 x i32]* %977, i32 0, i64 1
  %979 = icmp eq i32* %970, %978
  %980 = zext i1 %979 to i32
  %981 = load volatile i32***, i32**** @g_2372, align 8, !tbaa !5
  %982 = load i32**, i32*** %981, align 8, !tbaa !5
  %983 = load i32*, i32** %982, align 8, !tbaa !5
  %984 = load i32, i32* %983, align 4, !tbaa !1
  %985 = and i32 %980, %984
  %986 = load i32, i32* %l_3626, align 4, !tbaa !1
  %987 = trunc i32 %986 to i16
  %988 = getelementptr inbounds [1 x i16], [1 x i16]* %l_14, i32 0, i64 0
  %989 = load i16, i16* %988, align 2, !tbaa !10
  %990 = zext i16 %989 to i32
  %991 = call i32 @safe_div_func_int32_t_s_s(i32 7, i32 %990)
  %992 = load i32, i32* %l_3458, align 4, !tbaa !1
  %993 = icmp ne i32 %991, %992
  br i1 %993, label %994, label %998

; <label>:994                                     ; preds = %969
  %995 = load i8, i8* %l_3320, align 1, !tbaa !9
  %996 = zext i8 %995 to i32
  %997 = icmp ne i32 %996, 0
  br label %998

; <label>:998                                     ; preds = %994, %969
  %999 = phi i1 [ false, %969 ], [ %997, %994 ]
  %1000 = zext i1 %999 to i32
  %1001 = sext i32 %1000 to i64
  %1002 = call i64 @safe_div_func_uint64_t_u_u(i64 4, i64 %1001)
  %1003 = trunc i64 %1002 to i16
  %1004 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %987, i16 signext %1003)
  %1005 = trunc i16 %1004 to i8
  store i8 %1005, i8* @g_2463, align 1, !tbaa !9
  %1006 = zext i8 %1005 to i32
  %1007 = getelementptr inbounds [10 x [3 x [1 x i32]]], [10 x [3 x [1 x i32]]]* %l_3305, i32 0, i64 8
  %1008 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %1007, i32 0, i64 0
  %1009 = getelementptr inbounds [1 x i32], [1 x i32]* %1008, i32 0, i64 0
  %1010 = load i32, i32* %1009, align 4, !tbaa !1
  %1011 = icmp ne i32 %1006, %1010
  %1012 = xor i1 %1011, true
  %1013 = zext i1 %1012 to i32
  %1014 = icmp slt i32 %985, %1013
  %1015 = zext i1 %1014 to i32
  store i32 %1015, i32* %l_3627, align 4, !tbaa !1
  %1016 = load i8, i8* %l_3320, align 1, !tbaa !9
  %1017 = zext i8 %1016 to i32
  %1018 = icmp ne i32 %1015, %1017
  %1019 = zext i1 %1018 to i32
  %1020 = load i16**, i16*** %l_3657, align 8, !tbaa !5
  store i16** %1020, i16*** @g_2564, align 8, !tbaa !5
  %1021 = icmp ne i16** %1020, null
  %1022 = zext i1 %1021 to i32
  %1023 = trunc i32 %1022 to i8
  %1024 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext -2, i8 signext %1023)
  %1025 = sext i8 %1024 to i32
  %1026 = getelementptr inbounds [5 x [5 x [3 x i32]]], [5 x [5 x [3 x i32]]]* %l_3589, i32 0, i64 2
  %1027 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* %1026, i32 0, i64 3
  %1028 = getelementptr inbounds [3 x i32], [3 x i32]* %1027, i32 0, i64 1
  %1029 = load i32, i32* %1028, align 4, !tbaa !1
  %1030 = icmp sgt i32 %1025, %1029
  %1031 = zext i1 %1030 to i32
  %1032 = getelementptr inbounds [6 x i32], [6 x i32]* %l_3451, i32 0, i64 3
  %1033 = load i32, i32* %1032, align 4, !tbaa !1
  %1034 = icmp sle i32 %1031, %1033
  %1035 = zext i1 %1034 to i32
  %1036 = load i32*, i32** @g_212, align 8, !tbaa !5
  store i32 %1035, i32* %1036, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %1037

; <label>:1037                                    ; preds = %998, %818
  %1038 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1038) #1
  %1039 = bitcast i32** %l_3649 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1039) #1
  %1040 = bitcast i32* %l_3627 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1040) #1
  %1041 = bitcast i32* %l_3626 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1041) #1
  %1042 = bitcast [6 x i16]* %l_3617 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1042) #1
  %cleanup.dest.20 = load i32, i32* %2
  switch i32 %cleanup.dest.20, label %1048 [
    i32 0, label %1043
  ]

; <label>:1043                                    ; preds = %1037
  br label %1044

; <label>:1044                                    ; preds = %1043
  %1045 = load i32, i32* %l_3411, align 4, !tbaa !1
  %1046 = add i32 %1045, 1
  store i32 %1046, i32* %l_3411, align 4, !tbaa !1
  br label %804

; <label>:1047                                    ; preds = %804
  store i32 0, i32* %2
  br label %1048

; <label>:1048                                    ; preds = %1047, %1037, %684
  %1049 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1049) #1
  %1050 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1050) #1
  %1051 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1051) #1
  %1052 = bitcast [6 x [8 x i8*]]* %l_3615 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %1052) #1
  %1053 = bitcast [4 x [4 x [10 x i32]]]* %l_3614 to i8*
  call void @llvm.lifetime.end(i64 640, i8* %1053) #1
  %1054 = bitcast [5 x [5 x [3 x i32]]]* %l_3589 to i8*
  call void @llvm.lifetime.end(i64 300, i8* %1054) #1
  %1055 = bitcast i32* %l_3575 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1055) #1
  %1056 = bitcast %struct.S0* %l_3574 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1056) #1
  %1057 = bitcast i32* %l_3538 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1057) #1
  %1058 = bitcast i32* %l_3515 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1058) #1
  %cleanup.dest.21 = load i32, i32* %2
  switch i32 %cleanup.dest.21, label %1064 [
    i32 0, label %1059
    i32 42, label %1063
  ]

; <label>:1059                                    ; preds = %1048
  br label %1060

; <label>:1060                                    ; preds = %1059
  %1061 = load i32, i32* @g_986, align 4, !tbaa !1
  %1062 = add i32 %1061, 1
  store i32 %1062, i32* @g_986, align 4, !tbaa !1
  br label %603

; <label>:1063                                    ; preds = %1048, %603
  store i32 0, i32* %2
  br label %1064

; <label>:1064                                    ; preds = %1063, %1048, %319
  %1065 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1065) #1
  %1066 = bitcast i8** %l_3642 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1066) #1
  %1067 = bitcast i64* %l_3609 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1067) #1
  %1068 = bitcast i64* %l_3578 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1068) #1
  %1069 = bitcast i64**** %l_3560 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1069) #1
  %1070 = bitcast i64*** %l_3549 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1070) #1
  %1071 = bitcast i32* %l_3519 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1071) #1
  %1072 = bitcast [5 x i32]* %l_3518 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %1072) #1
  %1073 = bitcast [8 x i16*****]* %l_3500 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1073) #1
  %1074 = bitcast i16***** %l_3498 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1074) #1
  %1075 = bitcast i16**** %l_3499 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1075) #1
  %1076 = bitcast i32* %l_3484 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1076) #1
  %1077 = bitcast i32* %l_3482 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1077) #1
  %1078 = bitcast i32* %l_3480 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1078) #1
  %1079 = bitcast i32* %l_3479 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1079) #1
  %1080 = bitcast i32* %l_3475 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1080) #1
  %1081 = bitcast i32* %l_3474 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1081) #1
  %1082 = bitcast i32* %l_3472 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1082) #1
  %1083 = bitcast i32* %l_3470 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1083) #1
  %1084 = bitcast i32* %l_3469 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1084) #1
  %1085 = bitcast i32* %l_3465 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1085) #1
  %1086 = bitcast i32* %l_3458 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1086) #1
  %1087 = bitcast i16* %l_3456 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1087) #1
  %cleanup.dest.22 = load i32, i32* %2
  switch i32 %cleanup.dest.22, label %1093 [
    i32 0, label %1088
  ]

; <label>:1088                                    ; preds = %1064
  br label %1089

; <label>:1089                                    ; preds = %1088
  %1090 = load i32, i32* @g_24, align 4, !tbaa !1
  %1091 = sub nsw i32 %1090, 1
  store i32 %1091, i32* @g_24, align 4, !tbaa !1
  br label %281

; <label>:1092                                    ; preds = %281
  store i32 0, i32* %2
  br label %1093

; <label>:1093                                    ; preds = %1092, %1064, %273
  %1094 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1094) #1
  %1095 = bitcast i16*** %l_3657 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1095) #1
  %1096 = bitcast i16** %l_3658 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1096) #1
  %1097 = bitcast i64*** %l_3547 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1097) #1
  %1098 = bitcast i64** %l_3548 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1098) #1
  %1099 = bitcast i32* %l_3517 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1099) #1
  %1100 = bitcast i16***** %l_3501 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1100) #1
  %1101 = bitcast i16**** %l_3502 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1101) #1
  %1102 = bitcast [6 x i32]* %l_3451 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1102) #1
  %1103 = bitcast i32* %l_3422 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1103) #1
  %1104 = bitcast i32**** %l_3391 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1104) #1
  %1105 = bitcast i32*** %l_3392 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1105) #1
  %1106 = bitcast i32* %l_3352 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1106) #1
  %cleanup.dest.23 = load i32, i32* %2
  switch i32 %cleanup.dest.23, label %1114 [
    i32 0, label %1107
    i32 14, label %1108
    i32 11, label %88
  ]

; <label>:1107                                    ; preds = %1093
  br label %1108

; <label>:1108                                    ; preds = %1107, %1093
  %1109 = load i64, i64* @g_683, align 8, !tbaa !7
  %1110 = add i64 %1109, 1
  store i64 %1110, i64* @g_683, align 8, !tbaa !7
  br label %169

; <label>:1111                                    ; preds = %169
  %1112 = load i8, i8* %l_3320, align 1, !tbaa !9
  %1113 = zext i8 %1112 to i32
  store i32 %1113, i32* %1
  store i32 1, i32* %2
  br label %1114

; <label>:1114                                    ; preds = %1111, %1093
  %1115 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1115) #1
  %1116 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1116) #1
  %1117 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1117) #1
  %1118 = bitcast i64*** %l_3638 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1118) #1
  %1119 = bitcast i64* %l_3631 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1119) #1
  %1120 = bitcast i64* %l_3625 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1120) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3622) #1
  %1121 = bitcast [6 x [3 x i32**]]* %l_3616 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %1121) #1
  %1122 = bitcast [10 x i32]* %l_3579 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1122) #1
  %1123 = bitcast i64****** %l_3527 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1123) #1
  %1124 = bitcast i64***** %l_3528 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1124) #1
  %1125 = bitcast i64**** %l_3529 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1125) #1
  %1126 = bitcast i32* %l_3494 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1126) #1
  %1127 = bitcast i32* %l_3411 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1127) #1
  %1128 = bitcast [6 x i64*****]* %l_3327 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1128) #1
  %1129 = bitcast i64***** %l_3328 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1129) #1
  %1130 = bitcast i64**** %l_3329 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1130) #1
  %1131 = bitcast [2 x i8]* %l_3326 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1131) #1
  %1132 = bitcast i8***** %l_3325 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1132) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3320) #1
  %1133 = bitcast i32*** %l_3317 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1133) #1
  %1134 = bitcast i32** %l_3318 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1134) #1
  %1135 = bitcast [10 x [3 x [1 x i32]]]* %l_3305 to i8*
  call void @llvm.lifetime.end(i64 120, i8* %1135) #1
  %1136 = bitcast [1 x i16]* %l_14 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1136) #1
  %1137 = bitcast %struct.S0* %l_13 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1137) #1
  %1138 = load i32, i32* %1
  ret i32 %1138

; <label>:1139                                    ; preds = %570
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = alloca i16, align 2
  store i16 %si, i16* %1, align 2, !tbaa !10
  %2 = load i16, i16* %1, align 2, !tbaa !10
  %3 = sext i16 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i16
  ret i16 %5
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
!12 = !{!13, !8, i64 0}
!13 = !{!"S0", !8, i64 0, !2, i64 8}
